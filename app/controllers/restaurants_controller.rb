class RestaurantsController < ApplicationController
  before_action :set_restaurant_id, only: %i[ update destroy ]
  before_action :set_restaurant_name, only: %i[ show edit ]
  before_action :set_stadium, only: :index

  # GET /restaurants or /restaurants.json
  def index
    @restaurants = Restaurant.where("stadium_id = #{@stadium_lot.id}")
  end

  # GET /restaurants/1 or /restaurants/1.json
  def show
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants or /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to restaurant_by_stadium_url(@restaurant.name), notice: "Restaurant was successfully created." }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1 or /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to restaurant_by_stadium_url(@restaurant.name), notice: "Restaurant was successfully updated." }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1 or /restaurants/1.json
  def destroy
    @restaurant.destroy!

    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: "Restaurant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_id
      @restaurant = Restaurant.find(params[:id])
    end

    def set_restaurant_name
      @restaurant = Restaurant.find_by(name: params[:name])
    end

    # Only allow a list of trusted parameters through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :link, :description, :address, :stadium_id)
    end

    def set_stadium
      @stadium_lot = Stadium.find_by(name: params[:name])
    end
end
