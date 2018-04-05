module Api
  module V1
    class BooksController < ApplicationController
      include Wor::Paginate

      def index
        render_paginated Book
      end

      def show
        Book.find(params[:id])
      end
    end
  end
end
