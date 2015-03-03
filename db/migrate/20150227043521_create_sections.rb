class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :pid
      t.string :url
      t.text :content

      t.timestamps null: false
    end
  end
end
