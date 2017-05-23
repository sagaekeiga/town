class ImagesController < ApplicationController
  def index
    @images = Image.all
  end
  
  def new
    @image = Image.new
  end
  
  def create
     @image = Image.new(image_params)
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  def delete
  end
  
      private
      
        def image_params
          params.require(:image).permit(:url)
        end
end
