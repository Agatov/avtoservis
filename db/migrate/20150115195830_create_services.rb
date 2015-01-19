class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :category_id
      t.string :name
      t.string :image
      t.text :about

      t.timestamps null: false
    end
  end
end
