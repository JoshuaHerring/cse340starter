const express = require("express");
const router = new express.router();
const invController = require("../controllers/invController");

router.get("/type/classificationId", invController.buildClassification);

module.exports = router;