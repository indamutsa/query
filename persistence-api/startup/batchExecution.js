var axios = require("axios");
var FormData = require("form-data");
var fs = require("fs");
const { Metamodel } = require("../models/Metamodel");
var data = new FormData();

const runMetricsInInterval = async () => {
  data.append(
    "metamodel",
    fs.createReadStream("/home/arsene/Downloads/tryjar/metamodels/DB.ecore")
  );

  var config = {
    method: "post",
    url: "http://localhost:8186/mms/metrics/",
    headers: {
      ...data.getHeaders(),
    },
    data: data,
  };

  let metrics = await axios(config);
  metrics = metrics.data;

  let i = 0;
  metrics.forEach((metric) => {
    metric.id = i;
    metric.value = parseInt(metric.value);
    i++;
  });

  const metamodel = await Metamodel.findById("622f738cb26ebfc9dbbd9f00");

  metrics.forEach(async (metric) => {
    await Metamodel.findByIdAndUpdate(
      metamodel._id,
      {
        $push: {
          metrics: metric,
        },
      },
      {
        new: true, //To return the updated value
      }
    );
  });
  // metamodelData = await Metamodel.findByIdAndUpdate(
  //   metamodelData._id,
  //   {
  //     $push: {
  //       project: req.data ? req.data.project : req.body.project,
  //     },
  //   },
  //   {
  //     new: true, //To return the updated value
  //   }
  // );
};

module.exports = { runMetricsInInterval };
