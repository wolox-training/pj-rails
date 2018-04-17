module Api
  module V1
    class BookSuggestionsController < ApiController
      include Wor::Paginate

      def index
        render_paginated BookSuggestion
      end

      def create
        book_suggestion = BookSuggestion.new(create_params)
        return render json: book_suggestion, status: :created if book_suggestion.save
        render json: { errors: book_suggestion.errors }, status: :bad_request
      end

      def create_params
        params.require(:book_suggestion).permit(:id, :user_id, :title, :author, :link)
      end
    end
  end
end
