class PagesController < ApplicationController
  def index
    @pages = Page.order(:id)
  end

  def show
    @page = Page.find params[:id]
    @pages = Page.order(:id)
    @services = Service.order(:id)
  end
end