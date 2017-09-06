require 'test_helper'

class EnvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @envoice = envoices(:one)
  end

  test "should get index" do
    get envoices_url
    assert_response :success
  end

  test "should get new" do
    get new_envoice_url
    assert_response :success
  end

  test "should create envoice" do
    assert_difference('Envoice.count') do
      post envoices_url, params: { envoice: { customer_id: @envoice.customer_id } }
    end

    assert_redirected_to envoice_url(Envoice.last)
  end

  test "should show envoice" do
    get envoice_url(@envoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_envoice_url(@envoice)
    assert_response :success
  end

  test "should update envoice" do
    patch envoice_url(@envoice), params: { envoice: { customer_id: @envoice.customer_id } }
    assert_redirected_to envoice_url(@envoice)
  end

  test "should destroy envoice" do
    assert_difference('Envoice.count', -1) do
      delete envoice_url(@envoice)
    end

    assert_redirected_to envoices_url
  end
end
