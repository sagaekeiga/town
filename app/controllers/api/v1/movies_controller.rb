module Api
  module V1
    class MoviesController < ApplicationController
    skip_before_filter :verify_authenticity_token

      def index
        @movies = Movie.all
        render json: @movies
      end
      
      def key
         params = request.body.read
         logger.debug("params")
         logger.debug(params)
         logger.debug("params")
         @movie = Movie.find_by(key: params)
         render json: @movie
      end
    end

  end
end