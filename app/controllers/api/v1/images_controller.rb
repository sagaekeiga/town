module Api
  module V1
    class ImagesController < ApplicationController
    skip_before_filter :verify_authenticity_token

      def index
        @images = Image.all
        render json: @images
      end
      
      def search
         p params = request.body.read
         @images = Image.all
         @images.destroy_all
         render json: @images
      end
      
      def test
        params = JSON.parse request.body.read
        puts params['name']
        puts params['age']
      end
        
    end
  end
end