class UsersController < ApplicationController
  
  before_action :set_user, only: [:show]
  before_action :authenticate_user!, only: [:mypage]
  def show
    # redirect_to user_path(current_user)
  end
  
  def mypage
    redirect_to user_path(current_user)
    # user = User.find(params[:id])
  end
  
  
  private

  def set_user
    @user = User.find(params[:id])
  end
  
end
