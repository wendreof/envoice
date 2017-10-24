class ItemsProductPrice < ActiveRecord::Migration[5.1]
  def change
    change_column :items, :product_price, :decimal, precision: 15, scale: 2
  end
end