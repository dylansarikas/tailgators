class StadiumsController < ApplicationController
  before_action :set_stadium, only: %i[ show edit update destroy ]

  # GET /stadiums or /stadiums.json
  def index
    @stadiums = Stadium.all
  end

  # GET /stadiums/1 or /stadiums/1.json
  def show
  end

  # GET /stadiums/new
  def new
    @stadium = Stadium.new
  end

  # GET /stadiums/1/edit
  def edit
  end

  # POST /stadiums or /stadiums.json
  def create
    @stadium = Stadium.new(stadium_params)

    respond_to do |format|
      if @stadium.save
        format.html { redirect_to stadium_url(@stadium), notice: "Stadium was successfully created." }
        format.json { render :show, status: :created, location: @stadium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stadium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stadiums/1 or /stadiums/1.json
  def update
    respond_to do |format|
      if @stadium.update(stadium_params)
        format.html { redirect_to stadium_url(@stadium), notice: "Stadium was successfully updated." }
        format.json { render :show, status: :ok, location: @stadium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stadium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stadiums/1 or /stadiums/1.json
  def destroy
    @stadium.destroy!

    respond_to do |format|
      format.html { redirect_to stadiums_url, notice: "Stadium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stadium
      @stadium = Stadium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stadium_params
      params.require(:stadium).permit(:name, :team, :latitude, :longitude)
    end
end
