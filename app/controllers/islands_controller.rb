class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def my_islands
    @islands = Island.where(user: current_user)
  end

  def index
    @islands = Island.all
    @islands = Island.where("address ILIKE ?", "%#{params[:query]}%") if params[:query].present?
  end

  def show
    @island = Island.find(params[:id])
    @booking = Booking.new
  end

  def new
    @island = Island.new
  end

  def create
    @user = current_user
    @island = Island.new(island_params)
    @island.user = @user
    if @island.save
      redirect_to @island, notice: 'island was successfully created.'
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @island = Island.find(params[:id])
    @island.user = @user

  end

  def update
    @island = Island.find(params[:id])
    @island.update(island_params)
    redirect_to root_path(@island)
  end

  def destroy
    @island = Island.find(params[:id])
    @island.destroy
    redirect_to islands_path, notice: 'Your island has been deleted'
    #redirect_to [@island, @booking], notice: 'Your booking has been deleted!'
  end

  private

  def island_params
    params.require(:island).permit(:name, :description, :price, :type_of_event, :capacity, photos: [])
  end
end
