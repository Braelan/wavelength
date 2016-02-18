DreamCatcher.Routers.Router = Backbone.Router.extend({
  routes: {
    "": "index",
  },

  initialize: function(options) {
    this.$rootEl = options.$rootEl;
    this.$header = options.$header
    this.collection = DreamCatcher.Posts;
    this.current_user = new DreamCatcher.Models.CurrentUser()
    this.current_user.fetch({success: function(data){}})
    this.listenTo(this.current_user, 'sync change', this.sign_in)

  },

  index: function() {
    var view = new DreamCatcher.Views.PostsIndex({ collection: this.collection })
    this._swapview(view);
  },

  _swapview: function(view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.sign_in();
    this.$rootEl.html(view.render().$el)
  },

  sign_in: function() {
    var view = new DreamCatcher.Views.SignIn({ model: this.current_user})
   this.$header.html(view.render().$el)
  }

});
