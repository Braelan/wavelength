class MembershipsController < ApplicationController
  def create
    @current_user = current_user
    if @current_user
      Membership.create!(user_id: @current_user.id, post_id: params[:post_id] )
      redirect_to :back
    else
      flash.now[:error] = "Must be signed in to join group"
      redirect_to :back, flash: {error: "Must be signed in to join group"}
    end
  end
end
