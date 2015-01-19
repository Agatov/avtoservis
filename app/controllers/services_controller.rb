class ServicesController < ApplicationController

  before_action :find_category

  def index
    @services = @category.services
  end

  def show
    @service = Service.find params[:id]
  end

  private

  def find_category
    @category = Category.find params[:category_id]
  end
end