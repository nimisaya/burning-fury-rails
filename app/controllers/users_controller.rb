class UsersController < ApplicationController
  def new

    @user = User.new user_params
    redirect_to root_path
  end

  def create
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

end
