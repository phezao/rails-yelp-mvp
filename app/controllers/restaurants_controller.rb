class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :update, :edit, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
