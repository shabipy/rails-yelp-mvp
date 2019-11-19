class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(params_restaurant)
    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  private

  def params_restaurant
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
