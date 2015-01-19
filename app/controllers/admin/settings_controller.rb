class Admin::SettingsController < AdminController
  def index
    @settings = Setting.first

  end

  def update
    @settings = Setting.first

    if @settings.update_attributes settings_params
      redirect_to admin_settings_path
    else
      render :index
    end
  end

  private

  def settings_params
    params.require(:setting).permit!
  end

end