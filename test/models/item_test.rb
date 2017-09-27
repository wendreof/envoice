require 'test_helper'

class ItemTest < ActiveSupport::TestCase

  test "should calculate total" do
     apple = Product.new(price: 20)
     item  = Item.new(product: apple, amount: 10)
     assert_equal 200, item.total
     assert true
   end

end
