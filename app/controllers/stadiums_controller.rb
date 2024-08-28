class StadiumsController < ApplicationController
  before_action :set_stadium, only: :show

  def index
    @stadiums = Stadium.all
  end

  def show; end

  private

  def set_stadium
    @stadium = Stadium.find_by!(name: params[:name])
  end

  def stadium_params
    params.require(:stadium).permit(:name, :team, :latitude, :longitude)
  end
end
