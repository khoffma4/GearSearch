class AddStoreToProduct < ActiveRecord::Migration
  def change
    add_column :products, :store, :string
  end
end
