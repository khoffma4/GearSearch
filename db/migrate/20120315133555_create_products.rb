class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.string :image_path

      t.timestamps
    end
  end
end
