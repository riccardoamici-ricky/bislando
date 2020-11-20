class BookingsController < ApplicationController
  #after_action :verify_authorized, only: :my_bookings
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
    @my_bookings = @bookings.where(user: current_user)
  end

  def show
  #   @island = Island.find(params[:island_id])
  #   @booking = Booking.find(params[:id])
  #   @booking.island = @island
  #   authorize @booking
  end

  def new
    @island = Island.find(params[:island_id])
    @booking = Booking.new
    authorize @booking

  end

  def create
    @island = Island.find(params[:island_id])
    @booking = Booking.new(booking_params)
    @booking.island = @island
    @booking.user = current_user
    authorize @booking
    if @booking.save!

      #redirect_to [@island, @booking], notice: 'Your booking was succesfully made.'
      #code to be modified when we can access booking/show ---> WE CAN PUT BACK THE LINE ABOVE
      redirect_to islands_path, notice: 'create'
    else
      render :new
    end
  end

  def destroy
    # @booking = Booking.find(params[:id])
    # @island = @booking.island
    @booking.destroy
    redirect_to root_path, notice: 'destroy'
    authorize @booking
    #redirect_to [@island, @booking], notice: 'Your booking has been deleted!'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
