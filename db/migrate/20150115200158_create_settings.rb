class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.text :about
      t.string :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
