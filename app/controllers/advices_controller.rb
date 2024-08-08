class AdvicesController < ApplicationController
  before_action :set_advice, only: %i[ show edit update destroy ]

  # GET /advices or /advices.json
  # def index
  #   @advices = Advice.all
  # end

  # GET /advices/1 or /advices/1.json
  # def show
  # end

  # GET /advices/new
  def new
    @advice = Advice.new
  end

  # GET /advices/1/edit
  def edit
  end

  # POST /advices or /advices.json
  def create
    @advice = Advice.new(advice_params)
    # @advice.user_id = current_user
    # Why doesn't this work?

    respond_to do |format|
      if @advice.save
        format.html { redirect_back_or_to advice_url(@advice), notice: "Advice was successfully created." }
        format.json { render :show, status: :created, location: @advice }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @advice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advices/1 or /advices/1.json
  def update
    respond_to do |format|
      if @advice.update(advice_params)
        format.html { redirect_to advice_url(@advice), notice: "Advice was successfully updated." }
        format.json { render :show, status: :ok, location: @advice }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @advice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advices/1 or /advices/1.json
  def destroy
    @advice.destroy!

    respond_to do |format|
      format.html { redirect_back_or_to root_url, notice: "Advice was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advice
      @advice = Advice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def advice_params
      params.require(:advice).permit(:user_id, :body, :adviceable_id, :adviceable_type)
    end
end
