const express = require("express");
const router = new express.Router();
const invController = require("../controllers/invContoller");

router.get("/type/:classificationId", invController.buildByClassification);

module.exports = router;