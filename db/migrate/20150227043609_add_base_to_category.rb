class AddBaseToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :base, :boolean, default: 1
  end
end
