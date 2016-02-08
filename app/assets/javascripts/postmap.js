
window.gMap = {
map: null,
markers: [],

 initMap: function() {
  map =   new google.maps.Map(document.getElementsByClassName('map')[0], {
   center: {lat: 48.7502, lng: -122.475},
   zoom: 8
  });

  var marker = new google.maps.Marker({
    map: map,
   position: {lat: 48.75, lng: -122.475},
   title: 'Hello World!'
 });


  var searchBox = this.initSearch();
  var that = this
  searchBox.addListener('places_changed', function() {
    var markers = that.placeMarker(this)
  });


},

initSearch: function() {
  var defaultBounds = new google.maps.LatLngBounds(
    new google.maps.LatLng(48.5, -122.725),
    new google.maps.LatLng(49.0, -122.225))
    var input = document.getElementById('searchTextField')
    var options = {bounds: defaultBounds};
    return new google.maps.places.SearchBox(input, options)
},

placeMarker: function(that) {
    // var bounds = new google.maps.LatLngBounds();
  // map =   new google.maps.Map(document.getElementsByClassName('map')[0], {
  //  center: {lat: 48.7502, lng: -122.475},
  //  zoom: 8});
  var place = that.getPlaces()[0]
  var name = place.name
  var lati = that.getPlaces()[0].geometry.location.lat()
  var longi = that.getPlaces()[0].geometry.location.lng()

  var icon = {
    url: place.icon,
    size: new google.maps.Size(71,71),
    origin: new google.maps.Point(17, 34),
    scaledSize: new google.maps.Size(25,24)
  }

   var marker = new google.maps.Marker({
     map: map,
    position: {lat: lati, lng: longi},
    title: name
  });

  // var places = that.getPlaces()

  // markers.forEach(function(marker){ marker.setMap(null)})
  // var markers = []
  // places.forEach(function(place) {
    var icon = {
      url: place.icon,
      size: new google.maps.Size(71,71),
      origin: new google.maps.Point(17, 34),
      scaledSize: new google.maps.Size(25,24)
    }
  //   markers.push(new google.maps.Marker({
  //     map:map,
  //     icon: icon,
  //     title: place.name,
  //     position: place.geometry.location
  //   }));
  //
  // })
},

// setMarker: function(marker, map) {
//   marker.setMap(map)
// }

}
