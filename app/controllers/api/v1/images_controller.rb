module Api
  module V1
    class ImagesController < ApplicationController

      def index
        @images = Image.all
        render json: @images
      end
      
      def search
        
         @image = Image.new(image_params)
         @image.loation = params[:gps]
         @image.save!

      end

      private
      
        def image_params
          params.require(:image).permit(:en_title, :ja_title, :en_content, :ja_content, :url, :location)
        end
        
    end
  end
end