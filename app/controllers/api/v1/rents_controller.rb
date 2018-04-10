module Api
  module V1
    class RentsController < ApplicationController
      include Wor::Paginate

      def index
        render_paginated Rent
      end

      def create
        rent = Rent.new(create_params)
        return render json: rent, status: :created if rent.save
        render json: { errors: rent.errors }, status: :bad_request
      end
      def create_params
        params.require(:rent).permit(:id, :user_id, :book_id, :from, :to)
      end
    end
  end
end
