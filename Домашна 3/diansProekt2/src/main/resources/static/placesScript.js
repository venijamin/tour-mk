"use strict";

let currentMode = "light";
let body = document.body;

function toggleDarkMode() {
  if (currentMode == "light") {
    document.body.classList.toggle("dark-mode-body");
    currentMode = "dark";
    jq;
  } else if (currentMode == "dark") {
    document.body.classList.toggle("dark-mode-body");
    currentMode = "light";
  }
}

// let darkModeButton = document.getElementById(".dark-mode-button");

// $(darkModeButton).click({
//   function(currentMode) {
//     if (currentMode == "light") {
//       document.body.classList.toggle("dark-mode-body");
//       document.querySelectorAll("ul li a").toggle("link-dark-mdoe");
//       currentMode = "dark";
//     } else if (currentMode == "dark") {
//       document.body.classList.toggle("dark-mode-body");
//       currentMode = "light";
//     }
//   },
// });
