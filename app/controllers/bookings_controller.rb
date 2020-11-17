class BookingsController < ApplicationController
  def new
    @island = Island.find(params[:island_id])
    @booking = Booking.new
  end

  def create
    @island = Island.find(params[:island_id])
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking, notice: 'Your booking was succesfully made.'
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
