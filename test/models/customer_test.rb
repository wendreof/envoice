require 'test_helper'
require 'minitest/autorun'

class CustomerTest < ActiveSupport::TestCase

  test "should calculate the total envoice of client" do
    
      customer = customers(:wendreo)
      assert_equal 221.to_d, customer.total #mudar esse valor?
    end

end
