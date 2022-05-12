class TrackingNumbersController < ApplicationController
  before_action :set_tracking_number, only: %i[ show edit update destroy ]

  # GET /tracking_numbers or /tracking_numbers.json
  def index
    @tracking_numbers = TrackingNumber.all
  end

  # GET /tracking_numbers/1 or /tracking_numbers/1.json
  def show
  end

  # GET /tracking_numbers/new
  def new
    @tracking_number = TrackingNumber.new
  end

  # GET /tracking_numbers/1/edit
  def edit
  end

  # POST /tracking_numbers or /tracking_numbers.json
  def create
    @tracking_number = TrackingNumber.new(tracking_number_params)

    respond_to do |format|
      if @tracking_number.save
        format.html { redirect_to tracking_number_url(@tracking_number), notice: "Tracking number was successfully created." }
        format.json { render :show, status: :created, location: @tracking_number }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tracking_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tracking_numbers/1 or /tracking_numbers/1.json
  def update
    respond_to do |format|
      if @tracking_number.update(tracking_number_params)
        format.html { redirect_to tracking_number_url(@tracking_number), notice: "Tracking number was successfully updated." }
        format.json { render :show, status: :ok, location: @tracking_number }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tracking_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracking_numbers/1 or /tracking_numbers/1.json
  def destroy
    @tracking_number.destroy

    respond_to do |format|
      format.html { redirect_to tracking_numbers_url, notice: "Tracking number was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tracking_number
      @tracking_number = TrackingNumber.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tracking_number_params
      params.require(:tracking_number).permit(:carrier, :tracking_number, :order_id)
    end
end
