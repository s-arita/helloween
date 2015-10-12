class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(create_params)
    @photo.save
  end

  def show
    @photo = Photo.find(params[:id])
  end


private
    def create_params
        params.require(:photo).permit(:image, :imagename, :nickname, :email, :password)
    end
end
