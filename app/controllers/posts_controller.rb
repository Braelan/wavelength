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
    @post = Post.find(params[:id])
    @post.update!(post_params)
    render :show
  end

  def post_params
    params.require(:post).permit(:front, :back, :slide, :video)
  end
end
