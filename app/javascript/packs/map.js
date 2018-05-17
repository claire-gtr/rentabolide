import GMaps from 'gmaps/gmaps.js';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);

  map.addMarkers(markers);
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }
}


// const mapElement = document.getElementById('map');

// if (mapElement) {
//   const map = new GMaps({ el: '#map', lat: 0, lng: 0 });

//   const contentString = '<h4><%= car.name %></h4>'+
//                        '<h6><%= car.model %></h6>'+
//                        '<h6><%= car.description %></h6>';

//   const infowindow = map.InfoWindow({
//     content: contentString
//   });

//   const active_markers = markers.addListener('click', function() {
//   infowindow.open(map, marker);

//   const markers = JSON.parse(mapElement.dataset.active_markers);
//   map.addMarkers(active_markers);


//   });


// //////////////////////////////////////////////

//   if (markers.length === 0) {
//     map.setZoom(2);
//   } else if (markers.length === 1) {
//     map.setCenter(markers[0].lat, markers[0].lng);
//     map.setZoom(14);
//   } else {
//     map.fitLatLngBounds(markers);
//   }
// }

