class HotelsController < ApplicationController
  before_action :set_hotel_name, only: %i[show edit]
  before_action :set_stadium, only: :index
  before_action :set_hotel_id, only: :update

  def index
    @hotels = Hotel.where("stadium_id = #{@stadium_hotel.id}")
  end

  def show; end

  def new
    @hotel = Hotel.new
  end

  def edit; end

  def create
    @hotel = Hotel.new(hotel_params)

    respond_to do |format|
      if @hotel.save
        format.html { redirect_to hotel_by_stadium_url(@hotel.name), notice: 'Hotel was successfully created.' }
        format.json { render :show, status: :created, location: @hotel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @hotel.update(hotel_params)
        format.html { redirect_to hotel_by_stadium_url(@hotel.name), notice: 'Hotel was successfully updated.' }
        format.json { render :show, status: :ok, location: @hotel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Great use of private methods to keep code DRY in the controller. Potenitally could move this logic to a concern to not have to write them out in all the controllers.

  def set_hotel_name
    @hotel = Hotel.find_by(name: params[:name])
  end

  def set_hotel_id
    @hotel = Hotel.find(params[:id])
  end

  def set_stadium
    @stadium_hotel = Stadium.find_by(name: params[:name])
  end

  def hotel_params
    params.require(:hotel).permit(:name, :link, :address, :stadium_id, :description)
  end
end
