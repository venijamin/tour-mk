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
    /*
    https://www.google.com/maps/place/42%C2%B015'45.5%22N+21%C2%B057'14.2%22E/@42.2626403,21.9517556,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0xbfec5751578ee6ee!8m2!3d42.2626364!4d21.9539443
*/
    // /42°15'46.9"N+21°57'13.4"E/@42.2630278,21.9537222
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
  // {
  //   coordinates: "41.9969881|21.433031",
  //   name: "Stone Bridge",
  //   mk_name: "Камен мост",
  //   category: "Bridge",
  //   description: `Built in the 15th century, this stone, arched bridge is a prominent symbol of the country's capital.`,
  //   rating: `4.6`,
  //   review_count: "666 reviews",
  //   phone: "none",
  //   website: "none",
  //   picture: "none",
  // },
];

// ,,,,""""","","""","""","",""

// let coords = data[0].coordinates;
var northCoords;
var eastCoords;
let i = 0;

var container = document.getElementById("main-location-data");

data.forEach((el) => {
  element = document.createElement("div");
  element.className = "card";

  let coords = el.coordinates;
  // coords = coords.replace(".", "");

  // console.log(coords);
  let coordsArr = coords.split("|");
  // console.log(coordsArr);
  northCoords = coordsArr[0]; //.match(/.{1,2}/g) || [];
  eastCoords = coordsArr[1]; //.match(/.{1,2}/g) || [];
  console.log(northCoords);
  console.log(eastCoords);
  77;

  // <div id="map${i}" class="map"></div>
  if (el.link != "none") {
    element.innerHTML = ` <div class="main-location-title">${el.name}</div>
    <div class="main-location-description">${el.description}</div>
    <div class="main-location-rating">${el.rating}</div>
    <div class="main-categories">
    <ul>
      <li>${el.category}</li>
    </ul>
    <div class="main-view-more-bttn"><button >View more</button></div>
    </div>`;
  }
  /*
  else {
    element.innerHTML = `
  <div class="card">
  <div class="card-website"><a>Sorry no link available</a></div>
  ${el.name} (${el.mk_name}) / <span class="card-category">${el.category}</span></div>
  <br>
  <div>
  ${el.description}
  </div>

  <div class="card-website"><a href="https://${el.website}">Link to the Website!</a></div>`;
  }
  // element.innerHTML = content;
  */
  container.appendChild(element);
});

// i = 0;

/*
data.forEach((element) => {
  map = L.map(`map${i}`).setView([northCoords, eastCoords], 12);
  L.tileLayer(`https://tile.openstreetmap.org/{z}/{x}/{y}.png`, {
    maxZoom: 20,
    attribution:
      '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
  }).addTo(map);
});
*/
// var map = L.map("map").setView([northCoords, eastCoords], 12);
// L.tileLayer(`https://tile.openstreetmap.org/{z}/{x}/{y}.png`, {
//   maxZoom: 20,
//   attribution:
//     '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
// }).addTo(map);

/*
var scalable = new Scalable(".nav-inside-bar", {
  align: "center",
  veritcalAlign: "center",
});
*/

// "link",
//   "name",
//   "mk_name",
//   "category",
//   "description",
//   "rating",
//   "review_count",
//   "phone",
//   "website",
//   "picture";

/* KOD ZA VNESUVANJE NA MAPA
var map = L.map(`map${i}`).setView([northCoords, eastCoords], 16);
  L.tileLayer(`https://tile.openstreetmap.org/{z}/{x}/{y}.png`, {
    maxZoom: 20,
    attribution:
      '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
  }).addTo(map);
  L.marker([northCoords, eastCoords]).addTo(map);
  i++;

  <div id="map${i} class="map"></div>

*/
