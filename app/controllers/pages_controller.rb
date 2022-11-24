class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @articles = Article.all
    @booking = Booking.new
    @bookings = Booking.all

  end
end
