class Admin::PhotosController < AdminController
  def index
    @photos = Photo.order(:id)
  end

  def create
    @photo = Photo.new photo_params
    @photo.save
    redirect_to admin_photos_path
  end



  def destroy
    @photo = Photo.find params[:id]
    @photo.destroy
    redirect_to :back
  end

  private

  def photo_params
    params.require(:photo).permit!
  end
end