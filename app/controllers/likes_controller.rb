class LikesController < ApplicationController
  before_action :set_like, only: :destroy

  def new
    @like = Like.new
  end

  def create
    @like = Like.new(like_params)
    
    respond_to do |format|
      if @like.save
        format.html { redirect_back_or_to root_url, notice: "Like was successfully created." }
        format.json { render :show, status: :created, location: @like }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @like.destroy
    respond_to do |format|
      format.html { redirect_back_or_to root_url, notice: "Like was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_like
      @like = Like.find(params[:id])
    end

    def like_params
      params.require(:like).permit(:fan_id, :advice_id)
    end
end
