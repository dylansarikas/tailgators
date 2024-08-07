class HotelsController < ApplicationController
  before_action :set_hotel_name, only: %i[ show edit ]
  before_action :set_stadium, only: :index
  before_action :set_hotel_id, only: :update

  # GET /hotels or /hotels.json
  def index
    @hotels = Hotel.where("stadium_id = #{@stadium_hotel.id}")
  end

  # GET /hotels/1 or /hotels/1.json
  def show
  end

  # GET /hotels/new
  def new
    @hotel = Hotel.new
  end

  # GET /hotels/1/edit
  def edit
  end

  # POST /hotels or /hotels.json
  def create
    @hotel = Hotel.new(hotel_params)

    respond_to do |format|
      if @hotel.save
        format.html { redirect_to hotel_by_stadium_url(@hotel.name), notice: "Hotel was successfully created." }
        format.json { render :show, status: :created, location: @hotel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotels/1 or /hotels/1.json
  def update
    respond_to do |format|
      if @hotel.update(hotel_params)
        format.html { redirect_to hotel_by_stadium_url(@hotel.name), notice: "Hotel was successfully updated." }
        format.json { render :show, status: :ok, location: @hotel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotels/1 or /hotels/1.json
  # def destroy
  #   @hotel.destroy!

  #   respond_to do |format|
  #     format.html { redirect_to hotels_url, notice: "Hotel was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotel_name
      @hotel = Hotel.find_by(name: params[:name])
    end

    def set_hotel_id
      @hotel = Hotel.find(params[:id])
    end

    def set_stadium
      @stadium_hotel = Stadium.find_by(name: params[:name])
    end

    # Only allow a list of trusted parameters through.
    def hotel_params
      params.require(:hotel).permit(:name, :link, :address, :stadium_id, :description)
    end
end
