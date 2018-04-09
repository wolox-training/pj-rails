module Api
  module V1
    class BooksController < ApplicationController
      include Wor::Paginate

      def index
        render_paginated Book
      end

      def show
        render json: Book.find(params[:id]),status: :ok
      end
    end
  end
end
