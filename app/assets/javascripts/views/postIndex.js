

DreamCatcher.Views.PostsIndex = Backbone.CompositeView.extend({
  template: JST['posts/index'],
  events: {
    "submit .new-post" : "submit",
    "submit .upload-form" : "upload",
    "click .upvotes" : "upvote_sort",
    "click .recent" : "recent_sort",
    "submit .text-search-form" : "text_search"
  },

  initialize: function(options) {
    this.collection = options.collection
    this.post = new DreamCatcher.Models.Post();
    this.listenTo(this.collection, 'sync add' , this.render)
    var that = this;
    gMap.initIndexSearch(this.geo_search, that)
  },

  render: function() {
    this.collection.sort();
    var view = this.template({posts: this.collection, post: this.post})
    this.$el.html(view)
    var that = this
    return this;
  },

  submit: function(event) {
    event.preventDefault();
    var attrs = $('.new-post').serializeJSON();
    this.post.set(attrs.post)
    var that = this;
    this.post.save({},{
            success:function(data) {
              that.post.set({'updated_at':  data.escape('updated_at')})
              that.collection.add(that.post, {merge:true}   )
              that.render();
      },
          error: function(data) {
            console.log(data)
          }
        }
    )
  },

  upload: function(event) {
    event.preventDefault()
    var that = this;
    filepicker.pick(function(blob){
      that.post.set({front_img: blob.url})
    })

  },

  upvote_sort: function(event) {
    this.collection.comparator = function(model) {
      return - parseInt(model.escape('upvotes'))
    }
    this.render();
  },

  recent_sort: function(event) {
    this.collection.comparator = this.collection.recent_sort
    this.render();
  },

  text_search: function(event) {
    event.preventDefault();
    var query = $('.text-search-form').serializeJSON();
    this.collection.fetch({data: query})
    this.render();
  },

  geo_search: function(){
    window.indexLat = this.getPlaces()[0].geometry.location.lat()
    window.indexLng = this.getPlaces()[0].geometry.location.lat()
    // DreamCatcher.PostsIndex.renderIndexSearch(lat, lng)
  },

  // renderIndexSearch: function(lat, lng){
  //   debugger
  // }.bind(this.scope())




});
