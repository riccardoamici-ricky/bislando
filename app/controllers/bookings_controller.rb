class BookingsController < ApplicationController

  def my_bookings
    @bookings = Booking.where(user: current_user)
  end
  def new
    @island = Island.find(params[:island_id])
    @booking = Booking.new
  end

  def create
    @island = Island.find(params[:island_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.island = @island
    if @booking.save!
      #redirect_to [@island, @booking], notice: 'Your booking was succesfully made.'
      #code to be modified when we can access booking/show ---> WE CAN PUT BACK THE LINE ABOVE
      redirect_to @island, notice: 'Your booking was succesfully made.'
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @island = @booking.island
    @booking.destroy
    redirect_to islands_path, notice: 'Your booking has been deleted'
    #redirect_to [@island, @booking], notice: 'Your booking has been deleted!'
  end


  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
