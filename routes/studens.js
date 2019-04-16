var express = require("express");
var router = express.Router();

router.get("/", function(req, res) {
  res.send("GET ile /ogrenciler isteği yapıldı.");
});

router.post("/", function(req, res) {
  res.send("POST ile /ogrenciler isteği yapıldı.");
});

module.exports = router;
