module Api
  module V1
    class ImagesController < ApplicationController
    skip_before_filter :verify_authenticity_token

      def index
        @images = Image.all
        render json: @images
      end
      
      def search
         params = request.body.read
         logger.debug("params")
         logger.debug(params)
         logger.debug("params")
         @images = Image.where("ja_title like '%#{params}%'")
         render json: @images
      end
        
    end
  end
end