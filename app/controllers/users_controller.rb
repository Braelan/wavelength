class UsersController < ApplicationController

def show
  @user = User.find(params[:id])
  render :show
end

def edit
  @user = User.find(params[:id])
  render :edit
end
end
