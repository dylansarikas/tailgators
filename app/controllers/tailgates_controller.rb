class TailgatesController < ApplicationController
  before_action :set_tailgate_name, only: %i[ show edit destroy ]
  before_action :set_stadium, only: :by_stadium
  before_action :set_tailgate_id, only: :update

  # GET /tailgates or /tailgates.json
  def index
    @tailgates = Tailgate.all
    @stadiums = Stadium.all
  end

  # GET /tailgates/1 or /tailgates/1.json
  def show
  end

  # GET /tailgates/new
  def new
    @tailgate = Tailgate.new
  end

  # GET /tailgates/1/edit
  def edit
  end

  # POST /tailgates or /tailgates.json
  def create
    @tailgate = Tailgate.new(tailgate_params)

    respond_to do |format|
      if @tailgate.save
        format.html { redirect_to tailgate_by_stadium_url(@tailgate.name), notice: "Tailgate was successfully created." }
        format.json { render :show, status: :created, location: @tailgate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tailgate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tailgates/1 or /tailgates/1.json
  def update
    respond_to do |format|
      if @tailgate.update(tailgate_params)
        format.html { redirect_to tailgate_by_stadium_url(@tailgate.name), notice: "Tailgate was successfully updated." }
        format.json { render :show, status: :ok, location: @tailgate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tailgate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tailgates/1 or /tailgates/1.json
  def destroy
    @tailgate.destroy!

    respond_to do |format|
      format.html { redirect_to tailgates_url, notice: "Tailgate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def by_stadium
    @tailgates = Tailgate.where("stadium_id = #{@stadium_tailgate.id}")
    render "by_stadium"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tailgate_id
      @tailgate = Tailgate.find(params[:id])
    end

    def set_tailgate_name
      @tailgate = Tailgate.find_by(name: params[:name])
    end

    def set_stadium
      @stadium_tailgate = Stadium.find_by(name: params[:name])
    end

    # Only allow a list of trusted parameters through.
    def tailgate_params
      params.require(:tailgate).permit(:location, :name, :stadium_id, :description, :link)
    end
end
