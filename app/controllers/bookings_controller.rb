class BookingsController < ApplicationController

  def index
    @bookings= Bookings.all
  end

def new
@bookings =Bookings.new
end

def create
  @bookings = Bookings.new(bookings_params)
  if @bookings.save
   flash[:notice] = "Data was Added to Database"
   redirect_to booking_path(@bookings)
  else
   render 'new'
  end
end

def edit
  @bookings = Bookings.find(params[:id])
end

def show
@bookings = Bookings.find(params[:id])
end

def update
  @bookings = Bookings.find(params[:id])
  if @bookings.update(bookings_params)
    flash[:notice] = "Booking Updated"
    redirect_to booking_path(@bookings)
  else
    render 'edit'
  end
  end

  def destroy
  @booking = Bookings.find(params[:id])
  @booking.destroy
    flash[:notice]="Movie Deleted from List"
    redirect_to booking_path
  end

private

def bookings_params
  params.require(:bookings).permit(:Movie,:Description)
end

end