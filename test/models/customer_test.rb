require 'test_helper'
require 'minitest/autorun'

class CustomerTest < ActiveSupport::TestCase

  test "should calculate the total envoice of client" do
    
      customer = customers(:wendreo)
      assert_equal 181.076, customer.total
    end

end
