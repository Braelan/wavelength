
window.gMap = {
map: null,
markers: [],

 initMap: function() {
  map =   new google.maps.Map(document.getElementsByClassName('map')[0], {
   center: {lat: 48.7502, lng: -122.475},
   zoom: 8
  });

  var location = this._get_location();
  var marker = new google.maps.Marker({
    map: map,
   position: {lat: location[0], lng: location[1]},
   title: 'Hello World!'
 });
// stops normal submit of form to rails
$('.location').submit(function(event){event.preventDefault()})


  var searchBox = this.initSearch();
  var that = this
  searchBox.addListener('places_changed', function() {
    var markers = that.placeMarker(this)
  });


},
_get_location: function() {
  if ($('#lat')[0] !== undefined) {
     var lat = parseFloat($('#lat').val())
     var lng = parseFloat($('#lng').val())
  }else {
     var lat = parseFloat('48.75')
     var lng = parseFloat('-122.475')
  }
  var array = [lat,lng];
  return array;
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

  var id = window.location.pathname.split('/')[2]
   $.ajax({
     url: "/api/posts/" + id,
     type: 'POST',
     data: {_method: 'PATCH', post: {lat: lati, lng: longi}},
     success: function(data){},
     error: function(data){}
   })

},



}
