class Admin::PhotosController < AdminController
  def index
    @photos = Photo.order(:id)
  end



  def destroy

  end
end