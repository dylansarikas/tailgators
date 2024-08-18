class AdvicesController < ApplicationController
  before_action :set_advice, only: %i[show edit update destroy]

  def new
    @advice = Advice.new
  end

  def edit; end

  def show; end

  def create
    @advice = Advice.new(advice_params)

    respond_to do |format|
      if @advice.save
        format.html { redirect_back_or_to advice_url(@advice), notice: 'Advice was successfully created.' }
        format.json { render :show, status: :created, location: @advice }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @advice.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @advice.update(advice_params)
        format.html { redirect_back_or_to advice_url(@advice), notice: 'Advice was successfully updated.' }
        format.json { render :show, status: :ok, location: @advice }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @advice.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @advice.destroy!

    respond_to do |format|
      format.html { redirect_back_or_to root_url, notice: 'Advice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_advice
    @advice = Advice.find(params[:id])
  end

  def advice_params
    params.require(:advice).permit(:user_id, :body, :adviceable_id, :adviceable_type, :likes_count)
  end
end
