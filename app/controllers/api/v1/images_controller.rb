module Api
  module V1
    class ImagesController < ApplicationController
    skip_before_filter :verify_authenticity_token

      def index
        @images = Image.all
        render json: @images
      end
      
      def index_landing
        @images = Image.where(start: "乗り場")
        render json: @images
      end
      
      def index_exit
        @images = Image.where(start: "出口")
        render json: @images
      end
      
      def navigation
         params = request.body.read
         logger.debug("params")
         logger.debug(params)
         logger.debug("params")
         @image = Image.find_by(key: params)
         render json: @image
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