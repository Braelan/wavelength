class PostsController < ApplicationController
  def show
    @post = Post.includes(:post_upvotes, users: [:authentications]).find(params[:id])
    @post_upvotes = @post.post_upvotes.count
    render :show
  end

  def edit
    @post = Post.find(params[:id])
    render :edit
  end

  def update
  end

end
