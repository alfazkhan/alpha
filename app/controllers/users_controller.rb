class UsersController < ApplicationController

  def new
  @user=User.new
  end

  def create
    @user = User.new(users_params)

    if @user.save
      flash[:success] = "Welcome, #{@user.username}"
      bookings_path(@user)
    else
      render 'new'
    end
  end

  private

  def users_params
    params.require(:user).permit(:username,:email,:password)
  end

end