const invModel = require("../models/inventroy-model");
const utilities = require("../utilities");

const invCont = {};

invCont.buildByClassification = async function (req, res, next) {
    const classificationId = req.params.classificationId;
    let data = await invModel.getVehiclesByClassificationId(classificationId);
    let nav = await utilities.getNav();
    const className = data[0].classification_name
    // might need to update the link below to ../
    res.render("./inventory/classification-view", {
        title: className + "vehicles",
        nav,
        message: null,
        data,
    })
}

module.exports = invCont;