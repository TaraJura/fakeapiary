module Api
  class OrdersController < ApplicationController
    before_action :set_order, only: %i[ show edit update destroy ]

    # GET /orders or /orders.json
    def index
      @orders = Order.all
    end

    # GET /orders/1 or /orders/1.json
    def show
    end

    # POST /orders or /orders.json
    def create
      @order = Order.new(order_params)
      @order.order_states << OrderState.new(order_id: @order.id, name: "Vase zasilka byla prave vytvorena")

      respond_to do |format|
        if @order.save
          format.json { render :show, status: :created, location: @order }
        else
          format.json { render json: @order.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /orders/1 or /orders/1.json
    def update
      respond_to do |format|
        if @order.update(order_params)
          format.json { render :show, status: :ok, location: @order }
        else
          format.json { render json: @order.errors, status: :unprocessable_entity }
        end
      end
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
        params.require(:order).permit(:order_number, :order_number_web, :note, :pdf_docs, :total, :currency, :business_unit_id)
      end
  end
end