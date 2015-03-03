class Admin::SectionsController < AdminController
  def index
    @sections = Section.order(:id)
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new section_params

    if @section.save
      redirect_to admin_sections_path
    else
      render :new
    end
  end

  def edit
    @section = Section.find params[:id]
  end

  def update
    @section = Section.find params[:id]

    if @section.update_attributes section_params
      redirect_to admin_sections_path
    else
      render :edit
    end
  end

  def destroy
    @section = Section.find params[:id]
    @section.destroy
    redirect_to admin_sections_path
  end

  private

  def section_params
    params.require(:section).permit!
  end
end