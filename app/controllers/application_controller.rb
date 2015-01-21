class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @settings = Setting.first
    @photos = Photo.order(:id).limit(3)
  end
end
