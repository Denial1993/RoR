class UsersController < ApplicationController
  def index
    @users = User.includes(:missions)
  end
  
#  def index
#    @users = User.all
#  end 
end
