require 'test_helper'

class PaymentDescriptionsControllerTest < ActionController::TestCase
  setup do
    @payment_description = payment_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payment_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment_description" do
    assert_difference('PaymentDescription.count') do
      post :create, payment_description: { payment_description: @payment_description.payment_description, payment_type: @payment_description.payment_type }
    end

    assert_redirected_to payment_description_path(assigns(:payment_description))
  end

  test "should show payment_description" do
    get :show, id: @payment_description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payment_description
    assert_response :success
  end

  test "should update payment_description" do
    patch :update, id: @payment_description, payment_description: { payment_description: @payment_description.payment_description, payment_type: @payment_description.payment_type }
    assert_redirected_to payment_description_path(assigns(:payment_description))
  end

  test "should destroy payment_description" do
    assert_difference('PaymentDescription.count', -1) do
      delete :destroy, id: @payment_description
    end

    assert_redirected_to payment_descriptions_path
  end
end
