module Api
  module V1
    class BaseController < ActionController::Base
      protect_from_forgery with: :null_session

      def render_errors(errors, status)
        render json: { errors: errors }, status: status
      end
    end
  end
end
