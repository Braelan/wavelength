class MembershipsController < ApplicationController
  def create
    @current_user = current_user
    if @current_user && Membership.find_by(post_id: params[:post_id], user_id: @current_user.id)
      redirect_to :back, flash: {error: "Already a member of this collective"}
    elsif @current_user
      Membership.create!(user_id: @current_user.id, post_id: params[:post_id] )
      redirect_to :back
    else
      redirect_to :back, flash: {error: "Must be signed in to join collective."}
    end
  end
end
