module Api
  module V1
    class BooksuggestionsController < ApiController
      include Wor::Paginate

      def index
        render_paginated Booksuggestion
      end

      def create
        booksuggestion = Booksuggestion.new(create_params)
        return render json: booksuggestion, status: :created if booksuggestion.save
        render json: { errors: booksuggestion.errors }, status: :bad_request
      end

      def create_params
        params.require(:booksuggestion).permit(:id, :user_id, :title, :author, :link)
      end
    end
  end
end
