class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image
      t.boolean :for_main_page

      t.timestamps null: false
    end
  end
end
