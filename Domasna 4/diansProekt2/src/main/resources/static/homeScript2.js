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