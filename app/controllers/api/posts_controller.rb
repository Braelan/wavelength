class Api::PostsController < ApplicationController
  def index
    if !params[:post]
      @posts = Post.includes(:post_upvotes).all
      @posts = @posts.order('updated_at DESC')
    else
      @posts = Post.includes(:post_upvotes).text_search(params[:post][:query])
    end
    render "index"
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user ? current_user.id : 1
    @post.save!
    render :show
  end

  def update
    @post = Post.find(params[:id])
    @post.update!(post_params)
    render :show
  end

  def destroy
  end

  private

  def post_params
      params.require(:post).permit(:front, :lat, :lng, :back, :front_img, :query)
  end

end
