class IslandsController < ApplicationController
  def show
    @island = Island.find(params[:id])
  end

  def index
    @islands = Island.all
  end
end
