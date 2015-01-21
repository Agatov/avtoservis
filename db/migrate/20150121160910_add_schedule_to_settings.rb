class AddScheduleToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :schedule, :string
  end
end
