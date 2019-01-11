class BookingsController < ApplicationController

  def index
    @bookings= Bookings.all
  end

def new
@bookings =Bookings.new
end

  def delete
    #@bookings = Bookings.find(params[:id])
    @bookings = Bookings.find(params[:id])
    @bookings.destroy
    flash[:danger]="Movie Deleted from List"
    redirect_to bookings_path(@bookings)
  end

def create
  @bookings = Bookings.new(bookings_params)
  @bookings = Users.first
  if @bookings.save
   flash[:success] = "Data was Added to Database"
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
    flash[:success] = "Booking Updated"
    redirect_to booking_path(@bookings)
  else
    render 'edit'
  end
  end

  def destroy
  @bookings = Bookings.find(params[:id])
  @bookings.destroy
    flash[:danger]="Movie Deleted from List"
    redirect_to bookings_path(@bookings)
  end

private

def bookings_params
  params.require(:bookings).permit(:Movie,:Description,:Rating)
end

end