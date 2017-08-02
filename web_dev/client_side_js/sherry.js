var ital = document.getElementsByTagName("em");

var el = ital[0];

el.style.border = "3px solid red";

// var shades = document.getElementById("glasses");

// shades.hidden = true;

function removeGlasses() {
  var shades = document.getElementById("glasses");
  shades.hidden = true
};

var shades = document.getElementById("glasses");
shades.addEventListener("click", removeGlasses);