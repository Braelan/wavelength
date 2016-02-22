class PostsController < ApplicationController
  def show
    @post = Post.includes(:pdfs, :post_upvotes, users: [:authentications]).find(params[:id])
    @post_upvotes = @post.post_upvotes.count
    render :show
  end

  def edit
    @post = Post.includes(:pdfs).find(params[:id])
    render :edit
  end

  def update
    @post = Post.find(params[:id])
    @post.update!(post_params)
    if pdf_params[:pdf_link]
      pdf = Pdf.new
      pdf.link = pdf_params[:pdf_link]
      pdf.post_id = @post.id
      pdf.title = pdf_params[:pdf_title]
      pdf.save!
    end
    render :show
  end

  def post_params
    params.require(:post).permit(:front, :back, :slide, :video, :image)
  end

def pdf_params
  params.require(:post).permit(:pdf_link, :pdf_title)
end
end
