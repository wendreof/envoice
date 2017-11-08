require 'test_helper'

class PaymentMethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment_method = payment_methods(:one)
  end

  test "should get index" do
    get payment_methods_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_method_url
    assert_response :success
  end

  test "should create payment_method" do
    assert_difference('PaymentMethod.count') do
      post payment_methods_url, params: { payment_method: { type: @payment_method.type, value: @payment_method.value } }
    end

    assert_redirected_to payment_method_url(PaymentMethod.last)
  end

  test "should show payment_method" do
    get payment_method_url(@payment_method)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_method_url(@payment_method)
    assert_response :success
  end

  test "should update payment_method" do
    patch payment_method_url(@payment_method), params: { payment_method: { type: @payment_method.type, value: @payment_method.value } }
    assert_redirected_to payment_method_url(@payment_method)
  end

  test "should destroy payment_method" do
    assert_difference('PaymentMethod.count', -1) do
      delete payment_method_url(@payment_method)
    end

    assert_redirected_to payment_methods_url
  end
end
