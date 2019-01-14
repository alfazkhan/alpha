class BookingsController < ApplicationController

  before_action :set_booking, only:[:destroy,:update,:show,:edit,:delete]
  before_action :require_user, except:[:index,:show]
  before_action :require_same_user, only:[:edit,:update,:delete]

  #index page
  def index
    @bookings= Booking.paginate(page: params[:page], per_page:5)
  end

  #New user Object
  def new
    @bookings =Booking.new
  end

  #delete Option
  def delete


    @bookings.destroy
    flash[:danger]="Movie Deleted from List"
    redirect_to bookings_path(@bookings)
  end

  #Create Action
  def create

  @bookings = Booking.new(bookings_params)
  @bookings.user = User.last

  if @bookings.save
   flash[:success] = "Data was Added to Database"
   redirect_to booking_path(@bookings)
  else
   render 'new'
  end
  end

def edit

end

def show

end

def update

  if @bookings.update(bookings_params)
    flash[:success] = "Booking Updated"
    redirect_to booking_path(@bookings)
  else
    render 'edit'
  end
  end



private

def bookings_params
  params.require(:booking).permit(:Movie,:Description,:Rating,:user_id)
  end

  def set_booking
    @bookings = Booking.find(params[:id])
  end

  def require_same_user
    if current_user != @bookings.user
      flash[:danger]="You can Only make Changes to our Posts"
      redirect_to root_path
    end
  end

end