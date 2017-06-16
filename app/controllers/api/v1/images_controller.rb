module Api
  module V1
    class ImagesController < ApplicationController
    skip_before_filter :verify_authenticity_token

      def index
        @images = Image.all
        render json: @images
      end
      
      def search
         @images = Image.all
         @images.destroy_all
         render json: @images
      end
        
    end
  end
end