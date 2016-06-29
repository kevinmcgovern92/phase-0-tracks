console.log("Javascript is working");

var paragraph = document.getElementsByTagName("p");
var navigation = document.getElementsByTagName("nav");

function createBorder() {
  navigation[0].style.border = "4px solid blue"
};

function changeFont() {
  paragraph[0].style.fontFamily= "Arial"
};

function changeSpacing() {
  paragraph[0].style.letterSpacing= "10px"
};

paragraph[0].addEventListener("click", changeSpacing);

createBorder();
changeFont();
