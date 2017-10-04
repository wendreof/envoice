require 'test_helper'

class ProductTest < ActiveSupport::TestCase

   test "should validate product" do
    product = Product.new(price: 20)
    assert product.valid?
   end

   test "should validate produc without price" do
    product = Product.new
    refute product.valid?

  end

end
