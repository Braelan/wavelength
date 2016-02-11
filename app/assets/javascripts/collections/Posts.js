DreamCatcher.Collections.Posts = Backbone.Collection.extend({
  url: "/api/posts",
  model: DreamCatcher.Models.Post,

  comparator: function(model) {
      var string = model.escape('updated_at');
      var split = string.split('T')

      var time = split[1].slice(0,8);
      var date = split[0].split('-').join('/')
      return - new Date(date +" "+ time);


  }
})
