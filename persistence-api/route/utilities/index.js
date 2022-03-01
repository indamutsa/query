const multer = require("multer");
const fs = require("fs");
const xml2js = require("xml2js");
const jsonQuery = require("json-query");
//---------------------------------------------------------------------------------
/**
 * Models
 *
 * In Ecore, models are made of packages (EPackage), classifiers (EClass, EDataType, EEnum)
 * and structural features (EAttribute, EReference).
 * A package contains the classifiers while these latter are made of strcutural features.
 */

const readFile = async (type, path) => {
  try {
    const data = {
      ePackage: {
        name: "",
        nsURI: "",
        nsPrefix: "",
        eSubpackages: [],
      },
      content: "",
    };
    // /home/arsene/Downloads/modelset/models/repo-genmymodel-uml/data/_1WJvkPsAEeirA44cXlgljA.xmi
    // "localStorage/artifacts/metamodel/DB-1639678468581.ecore",
    // /home/arsene/Downloads/org.eclipse.epsilon-7a3b2a3fff4206c58c94df1597bfc821830e551f/examples/org.eclipse.epsilon.examples.mergeoo/CopyOO.etl
    // "localStorage/artifacts/metamodel/DB-1639678468581.ecore"

    const readData = fs.readFileSync(path, "utf8");

    if (type === "metamodel") {
      let result = await xml2js.parseStringPromise(readData, {
        mergeAttrs: true,
      });

      if (result["xmi:XMI"]) {
        if (result["xmi:XMI"]["ecore:EPackage"][0].name === "PrimitiveTypes")
          result = result["xmi:XMI"]["ecore:EPackage"][1];
        else result = result["xmi:XMI"]["ecore:EPackage"][0];
      } else if (result["ecore:EPackage"]) {
        result = result["ecore:EPackage"];
      }

      data.ePackage.name = result.name ? result.name[0] : "";
      data.ePackage.nsURI = result.nsURI ? result.nsURI[0] : "";
      data.ePackage.nsPrefix = result.nsPrefix ? result.nsPrefix[0] : "";

      if (result.eSubpackages) {
        result.eSubpackages.forEach((d) => {
          let m = "yes";
          populator(d, data, m);
        });
      } else {
        populator(result, data);
      }
    }

    data.content = minify(readData);

    return data;
  } catch (err) {
    console.log(err);
  }
};

const populator = (d, data, m) => {
  // console.log(d);
  let esub = {
    name: null,
    nsURI: null,
    nsPrefix: null,
    eClassifiers: [],
  };

  esub.name = m ? d.name[0] : "";
  esub.nsURI = m ? d.nsURI[0] : "";
  esub.nsPrefix = m ? d.nsPrefix[0] : "";

  d.eClassifiers.forEach((eClass) => {
    esub.eClassifiers.push(eClass.name[0]);
  });

  data.ePackage.eSubpackages.push(esub);

  return esub;
};

const minify = (xmlText) => {
  let text = xmlText.split(/\n|\(\r\n\)|\t/);
  let miniText = "";
  text.forEach((chunk) => {
    miniText += chunk.trim() + " ";
    miniText = miniText.replace(/\s\s+/g, " ");
  });

  return miniText;
};

//---------------------------------------------------------------------------------
// Save ARTIFACT
const uploadFile = (destination) => {
  // Uploading files to the disk rather into the database
  const storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, "./localStorage/artifacts/" + destination);
    },
    filename: (req, file, cb) => {
      let datafile = file.originalname.match(/(.*)\.(.*)/);
      let fileName = datafile[1];
      let ext = datafile[2];
      cb(
        null,
        fileName +
          "-" +
          Date.now() +
          "-" +
          Math.round(Math.random() * 100).toString() +
          "." +
          ext
      );
    },
  });

  return storage;
  // var upload = multer({ storage: storage }).single("file");
  // return upload;
};

//---------------------------------------------------------------------------------
// Deleting the file
const deleteFile = async (url) => {
  fs.access(url, fs.F_OK, async (err, ac) => {
    if (err) {
      return "Error occurred";
    } else {
      await fs.unlink(url, (ferr, fc) => {
        if (ferr) {
          return "Error Occurred On File Deletion!";
        } else {
          return "File deleted successfully!";
        }
      });
    }
  });
};

module.exports = {
  uploadFile,
  deleteFile,
  readFile,
};
