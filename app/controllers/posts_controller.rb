class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    render :show
  end

  def edit
    render :edit
  end
end
