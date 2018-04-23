module Api
  module V1
    class BooksController < ApiController
      include Wor::Paginate

      def index
        render_paginated Book
      end

      def show
        render json: Book.find(params[:id]), status: :ok
      end

      def info
        render json: OpenLibraryService.new(isbn: params[:isbn]).book_info(params)
      end

      def isbnshow
        render :isbnshow
      end
    end
  end
end
