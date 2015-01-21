class AddLatitudeAndLongirudeToSetting < ActiveRecord::Migration
  def change
    add_column :settings, :latitude, :float
    add_column :settings, :longitude, :float
  end
end
