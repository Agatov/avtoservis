class AddSiteTitleToSetting < ActiveRecord::Migration
  def change
    add_column :settings, :site_title, :string
  end
end
