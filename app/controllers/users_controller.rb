class UsersController < ApplicationController

  def edit
  end

  def new
  end

  def show
    @user = User.find(params[:id])
  end
end
