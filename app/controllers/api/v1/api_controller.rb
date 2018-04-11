module Api
  module V1
    class ApiController < ApplicationController
      include Wor::Paginate

      rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

      def render_not_found
        render error: exception.message.to_json, status: :not_found
      end
    end
  end
end
