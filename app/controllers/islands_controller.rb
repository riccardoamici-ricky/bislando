class IslandsController < ApplicationController
  after_action :verify_authorized, only: :my_islands
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show



  def index_my_islands
    @islands = policy_scope(Island).where(user: current_user)
    #authorize @island
  end

  def index
    @islands = policy_scope(Island).order(created_at: :desc)
    #@islands = Island.all
  end

  def show
    @island = Island.find(params[:id])
    authorize @island
    @booking = Booking.new
  end

  def new
    @island = Island.new
    authorize @island
  end

  def create
    @user = current_user
    @island = Island.new(island_params)
    @island.user = @user
    authorize @island
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
    authorize @island

  end

  def update
    @island = Island.find(params[:id])
    @island.update(island_params)
    authorize @island
    #redirect_to root_path(@island)

  end

  def destroy
    @island = Island.find(params[:id])
    @island.destroy
    redirect_to islands_path, notice: 'Your island has been deleted'
    authorize @island
    #redirect_to [@island, @booking], notice: 'Your booking has been deleted!'
  end

  private

  def island_params
    params.require(:island).permit(:name, :description, :price, :type_of_event, :capacity, photos: [])
  end
end
