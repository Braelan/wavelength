DreamCatcher.Models.Post = Backbone.Model.extend({
  url: "api/posts",

  getPosition: function() {
    var latcoord = parseFloat(this.escape('lat'));
    var lngcoord = parseFloat(this.escape('lng'));
    return {lat: latcoord,
      lng: lngcoord}
  }

})
