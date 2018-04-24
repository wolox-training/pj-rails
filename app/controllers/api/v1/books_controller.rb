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
        isbn = params[:isbn] ? params[:isbn] : params[:book_suggestion][:isbn]
        render json: OpenLibraryService.new.book_info(isbn)
      end

      def isbnshow
        render :isbnshow
      end
    end
  end
end
