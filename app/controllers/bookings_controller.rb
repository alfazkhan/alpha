class BookingsController < ApplicationController
  def new
  @bookings = Bookings.new
  end

  def create
    @bookings = Bookings.new(arguments)
    @bookings.save
    redirect_to bookings_show(@bookings)
  end

  private

  def arguments
    params.require(:bookings).permit(:Movie,:Description)
  end
end