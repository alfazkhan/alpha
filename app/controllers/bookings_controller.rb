class BookingsController < ApplicationController


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

def show
@bookings = Bookings.find(params[:id])
end

private

def bookings_params
  params.require(:bookings).permit(:Movie,:Description)
end

end