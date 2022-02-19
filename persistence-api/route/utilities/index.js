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
  const data = {
    name: "",
    nsURI: "",
    nsPrefix: "",
    eClassifiers: [],
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
      result = result["xmi:XMI"]["ecore:EPackage"][1];
      data.name = result.name[0];
      result.eClassifiers.forEach((d) => {
        data.eClassifiers.push(d.name[0]);
      });
    } else if (result["ecore:EPackage"]) {
      data.name = result["ecore:EPackage"].name[0];
      data.nsURI = result["ecore:EPackage"].nsURI[0];
      data.nsPrefix = result["ecore:EPackage"].nsPrefix[0];

      result["ecore:EPackage"].eClassifiers.forEach((d) => {
        data.eClassifiers.push(d.name[0]);
      });
    }
  }

  data.content = minify(readData);

  return data;
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
      cb(null, fileName + "-" + Date.now() + "." + ext);
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
