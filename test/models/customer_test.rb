require 'test_helper'
require 'minitest/autorun'

class CustomerTest < ActiveSupport::TestCase

  test "should calculate the total envoice of client" do
    
       envoice = envoices(:one)
       assert_equal 110, envoice.total
      end
end
