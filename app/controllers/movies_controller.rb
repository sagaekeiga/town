class MoviesController < ApplicationController
  def index
    @q = Movie.search(params[:q])
    @results = @q.result(distinct: true).page(params[:page])
    @movies = Movie.page(params[:page])
  end
  
  def new
    @q = Movie.search(params[:q])
    @movie = Movie.new
  end
  
  def create
    @movie = Movie.new(movie_params)
    if @movie.save!
       redirect_to movies_path
    else
    end
  end

  def show
    @q = Movie.search(params[:q])
    @movie = Movie.find(params[:id])
  end

  def edit
    @q = Movie.search(params[:q])
    @movie = Movie.find(params[:id])
  end
  
  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to @movie
  end
  
  def destroy
    @movie = Movie.find(params[:id])
    if @movie.delete
     flash[:success] = "deleted"
    end
    redirect_to movies_path
  end
  
        private
      
        def movie_params
          params.require(:movie).permit(:en_title, :ja_title, :en_content, :ja_content, :present, :destination, :url, :movie, :key)
        end

end
