class Posts::MembersController < ApplicationController
  def index
    @post = Post.includes(:users).find(params[:id])
    @members = @post.users
    render :index
  end
end
