module Api
  module V1
    class ImagesController < ApplicationController
    skip_before_action :verify_authenticity_token, if: -> {request.format.json?}

      def index
        @images = Image.all
        render json: @images
      end
      
      def search
        p params = [:tokyo]
        @images = Image.all
        render json: @images
      end
      
    end

  end
end