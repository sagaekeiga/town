module Api
  module V1
    class ImagesController < ApplicationController

      def index
        @images = Image.all
        render json: @images
      end
      
      def search
         location = request.body.read
         @images = Image.where(location: location)
         @images.destroy_all
      end

      private
      
        def image_params
          params.require(:image).permit(:en_title, :ja_title, :en_content, :ja_content, :url, :location)
        end
        
    end
  end
end