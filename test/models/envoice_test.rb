require 'test_helper'
require 'minitest/autorun'

class EnvoiceTest < ActiveSupport::TestCase
 
  test "should calculate the envoice total " do

   envoice = envoices(:one)
   assert_equal 72, envoice.total
  end
end