class UsersController < ApplicationController

  before_action :set_user,only:[:edit,:update,:show]
  before_action :require_same_user, only: [:edit,:update]

  #index
  def index
    @users= User.paginate(page: params[:page], per_page:5)
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

  end

  #Update Action
  def update

    if @users.update(users_params)
      flash[:success] = "User Deatils Updated"
      #redirect_to bookings_path(@user.bookings)
    else
      render 'edit'
    end
  end

  #show action

  def show

    @users_bookings= @users.bookings.paginate(page: params[:page], per_page:5)
  end

  #Just a Prank
  def joke

  end




  private

  def users_params
    params.require(:user).permit(:username,:email,:password)
  end

  def set_user
    @users = User.find(params[:id])
  end

  def require_same_user
    if current_user != @users
      flash[:danger] = "You can Only Make Changes to Your Account"
      redirect_to root_path
    end
  end

end