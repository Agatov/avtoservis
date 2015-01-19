class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :image
      t.text :about
      t.integer :services_count

      t.timestamps null: false
    end
  end
end
