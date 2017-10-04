require 'test_helper'

class ItemTest < ActiveSupport::TestCase

  test "should calculate total" do
     item  = Item.new(product: Product.new, amount: 10, 
                     product_price: 20)
     assert_equal 200, item.total
     #deve garantir que o product_price está no banco
   end

   test "should validate the item" do
    item = Item.new(product: Product.new,
                    envoice: Envoice.new,
                    amount: 2)
    assert item.valid?
   end

   test "should validate without amount" do
    item = Item.new(product: Product.new,
                    envoice: Envoice.new)
    refute item.valid?
   end

   test "should set product_price before save" do
    item = Item.new(product: Product.new(price: 10),
                    envoice: Envoice.new,
                    amount: 2)
    item.save
    assert_equal 10, item.product_price
  end

end
