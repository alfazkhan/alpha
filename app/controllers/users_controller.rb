class UsersController < ApplicationController

  #New user Object
  def new
  @user=User.new
  end

  #New User Create
  def create
    @user = User.new(users_params)

    if @user.save
      flash[:success] = "Welcome, #{@user.username}"
      #redirect_to bookings_path(@user.bookings.id)
    else
      render 'new'
    end
  end

  #Edit Object
  def edit
    @user = User.find(params[:id])
  end

  #Update Action
  def update
    @user = User.find(params[:id])
    if @user.update(users_params)
      flash[:success] = "User Deatils Updated"
      #redirect_to bookings_path(@user.bookings)
    else
      render 'edit'
    end
  end

  #Just a Prank
  def joke

  end


  private

  def users_params
    params.require(:user).permit(:username,:email,:password)
  end

end