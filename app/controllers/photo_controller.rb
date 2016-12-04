class PhotoController < ApplicationController
    def new
        @photo = Photo.new
    end

    def create
        @photo = Photo.new(photo_params)
        @photo.save!
    end

    def index
        @photo = Photos.all
    end

    def show
        @photo = Photo.find(param[:id])
    end

    def update
        @photo = Photo.find(param[:id])
       if  @photo.update_attributes(photo_params)
           @photo
       else
           render :new
       end
    end

    private
    def photo_params
        params.require(:photo).permit(:image, :name, :date, :notes)
    end
end
