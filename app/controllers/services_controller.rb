class ServicesController < ApplicationController

  def index
    @services = Service.order(:id)
  end

  def show
    @service = Service.find params[:id]
    @services = Service.order(:id)
  end
end