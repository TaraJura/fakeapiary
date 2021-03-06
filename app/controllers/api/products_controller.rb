module Api
  class ProductsController < ApplicationController
    before_action :set_product, only: %i[ show edit update destroy ]

    # GET /products or /products.json
    def index
      @products = Product.all
    end

    # GET /products/1 or /products/1.json
    def show
    end

    # POST /products or /products.json
    def create
      @product = Product.new(product_params)

      respond_to do |format|
        if @product.save
          format.json { render :show, status: :created, location: @product }
        else
          format.json { render json: @product.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /products/1 or /products/1.json
    def update
      respond_to do |format|
        if @product.update(product_params)
          format.json { render :show, status: :ok, location: @product }
        else
          format.json { render json: @product.errors, status: :unprocessable_entity }
        end
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_product
        @product = Product.find_by(params[:code])
      end

      # Only allow a list of trusted parameters through.
      def product_params
        params.permit(:code, :name, :short_name, :barcode, :unit, :weight_brutto, :weight_netto, :volume, :width, :height, :depth, :units_in_box, :boxes_on_pallete)
      end
  end
end
