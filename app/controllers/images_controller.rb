class ImagesController < ApplicationController
  def index
    @q = Image.search(params[:q])
    @results = @q.result(distinct: true).page(params[:page])
    @images = Image.page(params[:page])
  end
  
  def new
    @q = Image.search(params[:q])
    @image = Image.new
  end
  
  def create
     @image = Image.new(image_params)
     if @image.save!
       redirect_to root_path
     else
     end
  end
  
  def show
    @q = Image.search(params[:q])
    @image = Image.find(params[:id])
  end
  
  def edit
    @q = Image.search(params[:q])
    @image = Image.find(params[:id])
  end
  
  def update
    @image = Image.find(params[:id])
    @image.update(image_params)
    redirect_to @image
  end
  
  def destroy
    @image = Image.find(params[:id])
    if @image.delete
     flash[:success] = "deleted"
    end
    redirect_to root_path
  end
  
      private
      
        def image_params
          params.require(:image).permit(:en_title, :ja_title, :en_content, :ja_content, :url, :location, :movie, :start, :image, :key)
        end
end
