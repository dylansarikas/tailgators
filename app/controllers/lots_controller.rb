class LotsController < ApplicationController
  before_action :set_lot_id, only: %i[update destroy]
  before_action :set_lot_name, only: %i[show edit]
  before_action :set_stadium, only: :index

  def index
    @lots = Lot.where("stadium_id = #{@stadium_lot.id}")
  end

  def show; end

  def new
    @lot = Lot.new
  end

  def edit; end

  def create
    @lot = Lot.new(lot_params)

    respond_to do |format|
      if @lot.save
        format.html { redirect_to lot_by_stadium_url(@lot.name), notice: 'Lot was successfully created.' }
        format.json { render :show, status: :created, location: @lot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lot.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @lot.update(lot_params)
        format.html { redirect_to lot_by_stadium_url(@lot.name), notice: 'Lot was successfully updated.' }
        format.json { render :show, status: :ok, location: @lot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lot.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @lot.destroy!

    respond_to do |format|
      format.html { redirect_to lots_url, notice: 'Lot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_lot_id
    @lot = Lot.find(params[:id])
  end

  def set_lot_name
    @lot = Lot.find_by(name: params[:name])
  end

  def set_stadium
    @stadium_lot = Stadium.find_by(name: params[:name])
  end

  def lot_params
    params.require(:lot).permit(:address, :description, :name, :link, :stadium_id)
  end
end
