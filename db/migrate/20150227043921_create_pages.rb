class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :category_id
      t.string :name
      t.string :image
      t.text :content

      t.timestamps null: false
    end
  end
end
