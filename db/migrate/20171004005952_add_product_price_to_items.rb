class AddProductPriceToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :product_price, :decimal
  end
end
