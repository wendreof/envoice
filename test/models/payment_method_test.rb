require 'test_helper'

class PaymentMethodTest < ActiveSupport::TestCase
  test "should to calculate PaymentMethodTest" do
    paymentMethod = payment_methods(:four)
    assert_equal 10, paymentMethod.totalMethod
  end
end