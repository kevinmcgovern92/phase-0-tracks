console.log("Javascript is working");

var paragraph = document.getElementsByTagName("p");
var navigation = document.getElementsByTagName("nav");

function createBorder() {
  navigation.style.border = "4px solid blue"
};

function changeFont() {
  paragraph.style.font_family: "Arial"
};

createBorder();
changeFont();