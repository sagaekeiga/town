module Api
  module V1
    class ImagesController < ApplicationController

      def index
        @images = Image.all
        render json: @images
      end
      
      def search
        if params[:gps].blank?
          render json: [{"error": "100", "msg": "必須パラメーターがありません", "required": {"key": "name"}}]
        else 
          @image = Image.where("location like ?", "%" + params[:gps] + "%")
      
          if @image.empty?
            @image = Image.where("location like ?", "%" + params[:gps] + "%")
          end
      
          render json: "2"
        end
      end
      
    end

  end
end