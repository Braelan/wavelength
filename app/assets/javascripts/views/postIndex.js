

DreamCatcher.Views.PostsIndex = Backbone.CompositeView.extend({
  template: JST['posts/index'],
  events: {
    "submit .new-post" : "submit",
    "submit .upload-form" : "upload"
  },

  initialize: function(options) {
    this.collection = options.collection
    this.post = new DreamCatcher.Models.Post();
    this.listenTo(this.collection, 'sync add' , this.render)
  },

  render: function() {
    this.collection.sort();
    var view = this.template({posts: this.collection, post: this.post})
    this.$el.html(view)
    var that = this
  //   setTimeout(function(){
  //   that.addPostForm();
  // }, 1000)

    return this;
  },

  // addPostForm: function() {
  //   // persist model after error here
  //   var postForm = new DreamCatcher.Views.PostForm({collection: this.collection}).render()
  //   this.attachSubview('.new-form', postForm)
  // }

  submit: function(event) {
    event.preventDefault();
    var attrs = $('.new-post').serializeJSON();
    this.post.set(attrs.post)
    var that = this;
    this.post.save({},{
            success:function(data) {
              debugger
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

  }




});
