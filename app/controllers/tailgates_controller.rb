class TailgatesController < ApplicationController
  before_action :set_tailgate_id, only: :update
  before_action :set_tailgate_name, only: %i[show edit destroy]
  before_action :set_stadium, only: :by_stadium

  def index
    @tailgates = Tailgate.all
    @stadiums = Stadium.all
  end

  def show; end

  def new
    @tailgate = Tailgate.new
  end

  def edit; end

  def create
    @tailgate = Tailgate.new(tailgate_params)

    respond_to do |format|
      if @tailgate.save
        format.html do
          redirect_to tailgate_by_stadium_url(@tailgate.name), notice: 'Tailgate was successfully created.'
        end
        format.json { render :show, status: :created, location: @tailgate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tailgate.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @tailgate.update(tailgate_params)
        format.html do
          redirect_to tailgate_by_stadium_url(@tailgate.name), notice: 'Tailgate was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @tailgate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tailgate.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tailgate.destroy!

    respond_to do |format|
      format.html { redirect_to tailgates_url, notice: 'Tailgate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def by_stadium
    @tailgates = Tailgate.where("stadium_id = #{@stadium_tailgate.id}")
    render 'by_stadium'
  end

  private

  def set_tailgate_id
    @tailgate = Tailgate.find(params[:id])
  end

  def set_tailgate_name
    @tailgate = Tailgate.find_by(name: params[:name])
  end

  def set_stadium
    @stadium_tailgate = Stadium.find_by(name: params[:name])
  end

  def tailgate_params
    params.require(:tailgate).permit(:address, :name, :stadium_id, :description, :link)
  end
end
