require 'test_helper'

class CartsControllerTest < ActionController::TestCase
  setup do
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart" do
    assert_difference('Cart.count') do
      post :create, :cart => nil
    end

    assert_redirected_to cart_path(assigns(:cart))
  end

  test "should show cart" do
    get :show, :id => 1
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => 1
    assert_response :success
  end

  test "should update cart" do
    put :update, :id => 1, :cart => nil
    assert_redirected_to cart_path(assigns(:cart))
  end

  test "should destroy cart" do
    assert_difference('Cart.count', -1) do
      delete :destroy, :id => 1
    end

    assert_redirected_to store_path
  end
end
