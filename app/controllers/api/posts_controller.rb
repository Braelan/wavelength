class Api::PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts = @posts.order('updated_at DESC')
    render "index"
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user ? current_user.id : 1
    @post.save!

    render :json =>  {:post => 'created a post' }.to_json
  end

  def update
    @post = Post.find(params[:id])
    @post.update!(post_params)
    print "*********************"
    puts post_params
    render :show
  end

  def destroy
  end

  private

  def post_params
      params.require(:post).permit(:front, :lat, :lng, :back, :front_img)
  end

end
