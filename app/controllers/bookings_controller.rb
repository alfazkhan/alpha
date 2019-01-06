class BookingsController < ApplicationController


def new
@bookings =Bookings.new
end

def create
#render plain: params[:bookings].inspect
  @bookings = Bookings.new(bookings_params)
  @bookings.save
  redirect_to bookings_path(@bookings)
end

private

def bookings_params
  params.require(:bookings).permit(:Movie,:Description)
end

end