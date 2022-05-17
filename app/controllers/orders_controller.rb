class OrdersController < ApplicationController
  before_action :set_order, only: %i[show edit update destroy packaging transport set_state set_tracking]
  skip_before_action :verify_authenticity_token

  # GET /orders or /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1 or /orders/1.json
  def show
    respond_to do |format|
      format.pdf { send_data Base64.decode64(@order.pdf_docs), filename: 'foo.pdf' }
      format.html { order_path(@order) }
    end
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders or /orders.json
  def create
    @order = Order.new(order_params)
    @order.order_states << OrderState.new(order_id: @order.id, name: "Vase zasilka byla prave vytvorena")

    respond_to do |format|
      if @order.save
        format.html { redirect_to order_url(@order), notice: "Order was successfully created." }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1 or /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to order_url(@order), notice: "Order was successfully updated." }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def set_state
    @order.order_states << OrderState.new(name: "Balime", code: "101")
    redirect_to @order, notice: "Stav byl zmenen"
    Typhoeus.post("#{Rails.configuration.api['pipe_url']}/orders/#{@order.order_number}/ping")
  end

  def set_tracking
    @order.order_states << OrderState.new(name: "Expedicni fronta hotovo", code: "120")
    @order.tracking_numbers << TrackingNumber.new(carrier: "DPD", tracking_number: rand(1e5..1e6).to_i )
    redirect_to @order, notice: "Bylo nastaveno tracking number"
    Typhoeus.post("#{Rails.configuration.api['pipe_url']}/orders/#{@order.order_number}/ping")
  end


  # DELETE /orders/1 or /orders/1.json
  def destroy
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:order_number, :order_number_web, :note, :pdf_docs, :total, :currency, :business_unit_id, :transport, :packaging)
    end
end
