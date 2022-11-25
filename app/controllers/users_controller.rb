class UsersController < ApplicationController
  def profile
    @bookings = Booking.all
    @articles = Article.all
  end
end
