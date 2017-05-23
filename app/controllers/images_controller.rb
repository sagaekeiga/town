class ImagesController < ApplicationController
  def index
    @images = Image.all
  end
  
  def new
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
    @image = Image.find(params[:id])
  end
  
  def edit
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
          params.require(:image).permit(:en_title, :ja_title, :en_content, :ja_content, :url)
        end
end
