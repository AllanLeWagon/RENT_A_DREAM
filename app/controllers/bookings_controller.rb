class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.owner = current_user
    @booking.article = Article.find(params[:article_id])
    if @booking.save
      redirect_to profile_path
    else
      render
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
