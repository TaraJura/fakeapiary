# frozen_string_literal: true

module Api
  module V1
    class ProductsController < BaseController
      skip_before_action :verify_authenticity_token

      def index
        product = Product.all
        render jsonapi: product
      end

      def show
        product = Product.find(params[:id])
        render jsonapi: product
      end

      def update
        product = Product.find(params[:id])
        product.update(product_params)
        render jsonapi: product
      end

      def create
        product = Product.new(product_params)

        if product.save
          render jsonapi: product
        else
          render jsonapi: product.errors, status: :unproccessable_entity
        end
      end

      def product_params
        jsonapi_deserialize(
          params,
          only: [
            :id, :code, :name, :short_name, :barcode, :unit, :weight_brutto, :weight_netto, :volume, :width, :height, :depth, :units_in_box, :boxes_on_pallete
          ]
        )
      end
    end
  end
end
