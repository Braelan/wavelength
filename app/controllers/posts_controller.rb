class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])

    render :show
  end

  def edit
    @post = Post.find(params[:id])
    render :edit
  end

  def update
  end




end
