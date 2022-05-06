# frozen_string_literal: true

module Api
  module V1
    class OrdersController < BaseController
      skip_before_action :verify_authenticity_token

      def show
        orders = Order.find(params[:id])
        render jsonapi: orders
      end

      def index
        orders = Order.all
        render jsonapi: orders
      end

      def create
        Order.create(Order_params)
        render jsonapi: Order.all
      end

      def update
        Order.update(Order_params)
        render jsonapi: Order
      end

      def Order_params
        jsonapi_deserialize(
          params,
          only: %i[
            id
          ]
        )
      end
    end
  end
end
