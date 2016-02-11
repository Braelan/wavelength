DreamCatcher.Collections.Posts = Backbone.Collection.extend({
  url: "/api/posts",
  model: DreamCatcher.Models.Post,

  comparator: function(model) {
      var string = model.escape('updated_at');
      if (string.indexOf("GMT") === -1 ){
      var split = string.split('T')
      if (split[1] == "undefined"){
        debugger
      }
      var time = split[1].slice(0,8);
      var date = split[0].split('-').join('/')
      return - new Date(date +" "+ time);
    } else {
      debugger
      return 100000000000
    }


  }
})
