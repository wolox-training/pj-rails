module Api
  module V1
    class RentsController < ApiController
      include Wor::Paginate
      #before_action :authenticate_user!, only: [:index]

      def index
        render_paginated policy_scope(Rent)
      end

      def create
        rent = Rent.new(create_params)
        if rent.save
          ModelMailer.new_record_notification(rent).deliver
          return render json: rent, status: :created
        end
        render json: { errors: rent.errors }, status: :bad_request
      end

      def create_params
        params.require(:rent).permit(:id, :user_id, :book_id, :from, :to)
      end
    end
  end
end
