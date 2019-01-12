class BookingsController < ApplicationController

  def index
    @bookings= Booking.all
  end

def new
@bookings =Booking.new
end

  def delete
    #@bookings = Bookings.find(params[:id])
    @bookings = Booking.find(params[:id])
    @bookings.destroy
    flash[:danger]="Movie Deleted from List"
    redirect_to bookings_path(@bookings)
  end

def create
  @bookings = Booking.new(bookings_params)
  @bookings.user = User.first

  if @bookings.save
   flash[:success] = "Data was Added to Database"
   redirect_to booking_path(@bookings)
  else
   render 'new'
  end
end

def edit
  @bookings = Booking.find(params[:id])
end

def show
@bookings = Booking.find(params[:id])
end

def update
  @bookings = Booking.find(params[:id])
  if @bookings.update(bookings_params)
    flash[:success] = "Booking Updated"
    redirect_to booking_path(@bookings)
  else
    render 'edit'
  end
  end

  def destroy
  @bookings = Booking.find(params[:id])
  @bookings.destroy
    flash[:danger]="Movie Deleted from List"
    redirect_to bookings_path(@bookings)
  end

private

def bookings_params
  params.require(:booking).permit(:Movie,:Description,:Rating,:user_id)
end

end