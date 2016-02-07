DreamCatcher.Views.PostForm = Backbone.View.extend({
  template: JST['posts/form'],

  events: {
    "submit .new-post" : "submit",
    "submit .upload" : "upload"
  },

  initialize: function(options) {
    this.collection = options.collection;
     this.post = new DreamCatcher.Models.Post();
    //  this.listenTo(this.collection, 'sync', this.render)
  },

  render: function() {
    var view = this.template({post: this.post})
    this.$el.html(view)
    return this;
  },

  submit: function(event) {
    event.preventDefault();
    var attrs = $('.new-post').serializeJSON();
    this.post.set(attrs.post)
    var that = this;
    this.post.save({},{
            success:function() {
        that.collection.add(that.post, {merge:true}   )
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

  }


})
