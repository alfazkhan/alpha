class WelcomeController < ApplicationController
  def home
  redirect_to bookings_path if logged_in?
  end

  def about

  end

  def test

  end

end