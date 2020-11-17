class IslandsController < ApplicationController
  
  def index
    @islands = Island.all
  end

  def show
    @island = Island.find(params[:id])
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)

    if @island.save
      redirect_to @island, notice: 'island was successfully created.'
    else
      render :new
    end
  end

  private

  def island_params
    params.require(:island).permit(:name, :description, :price, :type_of_event, :capacity, :photo)
  end
end
