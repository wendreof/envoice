require 'test_helper'
require 'minitest/autorun'

class CustomerTest < ActiveSupport::TestCase

  test "should calculate the total envoice of client" do
    
      customer = customers(:wendreo)
      assert_equal 90, customer.total #mudar esse valor?
    end

end
