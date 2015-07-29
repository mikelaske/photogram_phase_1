class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def new
    @photo = Photo.find(params["id"])

    render("new.html.erb")
  end

  def show
    @photo = Photo.find(params["id"])

    render("show.html.erb")
  end

  def destroy
  @photo = Photo.find(params[:id])
  @photo.destroy
  redirect_to '/'
  end
end
