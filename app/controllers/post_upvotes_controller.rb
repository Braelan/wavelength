class PostUpvotesController < ApplicationController
  def create
    @current_user = current_user
    if @current_user && PostUpvote.where(user_id: @current_user.id, post_id: params[:post_id]).count > 3
      redirect_to :back, flash: {error: "Maximum of 4 votes per person per collective"}
    elsif @current_user
      PostUpvote.create!(user_id: @current_user.id, post_id: params[:post_id])
      redirect_to :back
    else
        redirect_to :back, flash: {error: "Must be signed in to vote."}
    end
  end
end
