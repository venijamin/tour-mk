"use strict";

function dropDown() {
  document.getElementById("settingsDropdown").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function (event) {
  if (!event.target.matches(".dropbtn")) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains("show")) {
        openDropdown.classList.remove("show");
      }
    }
  }
};

var data, content, element;

data = [
  {
    coordinates: "42.2626364|21.9539443",
    name: "Canyon Matka",
    mk_name: "Клисура Матка",
    category: "Nature preserve",
    description: `Picturesque gorge with medieval monasteries, also offering boating, hiking & cave exploration.`,
    rating: `4.7/7`,
    review_count: "258 reviews",
    phone: "+389 70 271 900",
    website: "kokino.mk",
    picture: "none",
  },
];
