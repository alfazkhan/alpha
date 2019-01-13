class UsersController < ApplicationController

  #index
  def index
    @users= User.all
  end

  #New user Object
  def new
  @users=User.new
  end

  #New User Create
  def create
    @users = User.new(users_params)

    if @users.save
      flash[:success] = "Welcome, #{@users.username}"
      #redirect_to bookings_path(@user.bookings.id)
    else
      render 'new'
    end
  end

  #Edit Object
  def edit
    @users = User.find(params[:id])
  end

  #Update Action
  def update
    @users = User.find(params[:id])
    if @users.update(users_params)
      flash[:success] = "User Deatils Updated"
      #redirect_to bookings_path(@user.bookings)
    else
      render 'edit'
    end
  end

  #show action

  def show
    @users = User.find(params[:id])
  end

  #Just a Prank
  def joke

  end




  private

  def users_params
    params.require(:user).permit(:username,:email,:password)
  end

end