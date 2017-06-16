module Api
  module V1
    class ImagesController < ApplicationController
    skip_before_filter :verify_authenticity_token

      def index
        @images = Image.all
        render json: @images
      end
      
      def search
         json_request = JSON.parse(request.body.read)
         @images = Image.where(location: request.body.read)
         @images.destroy_all
         render json: @images
      end
        
    end
  end
end