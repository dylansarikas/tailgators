class RestaurantsController < ApplicationController
  before_action :set_restaurant_id, only: %i[update destroy]
  before_action :set_restaurant_name, only: %i[show edit]
  before_action :set_stadium, only: :index

  def index
    @restaurants = Restaurant.where("stadium_id = #{@stadium_lot.id}")
  end

  def show; end

  def new
    @restaurant = Restaurant.new
  end

  def edit; end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html do
          redirect_to restaurant_by_stadium_url(@restaurant.name), notice: 'Restaurant was successfully created.'
        end
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html do
          redirect_to restaurant_by_stadium_url(@restaurant.name), notice: 'Restaurant was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @restaurant.destroy!

    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_restaurant_id
    @restaurant = Restaurant.find(params[:id])
  end

  def set_restaurant_name
    @restaurant = Restaurant.find_by(name: params[:name])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :link, :description, :address, :stadium_id)
  end

  def set_stadium
    @stadium_lot = Stadium.find_by(name: params[:name])
  end
end
