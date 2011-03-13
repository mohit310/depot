require 'test_helper'

class LineItemsControllerTest < ActionController::TestCase
  setup do

  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_item" do
    assert_difference('LineItem.count') do
      post :create, :product_id => 980190981
    end

    assert_redirected_to cart_path(assigns(:line_item).cart)
  end

  test "should show line_item" do
    @line_item = LineItem.find(1)
    assert_not_nil @line_item, "Line Item cannot be null"
    get :show, :id => @line_item.to_param
    assert_response :success
  end

  test "should get edit" do
    @line_item = LineItem.find(1)
    assert_not_nil @line_item, "Line Item cannot be null"
    get :edit, :id => @line_item.to_param
    assert_response :success
  end

  test "should update line_item" do
    @line_item = LineItem.find(1)
    assert_not_nil @line_item, "Line Item cannot be null"
    put :update, :id => @line_item.to_param, :line_item => @line_item.attributes
    assert_redirected_to line_item_path(assigns(:line_item))
  end

  test "should destroy line_item" do
    @line_item = LineItem.find(1)
    assert_not_nil @line_item, "Line Item cannot be null"
    assert_difference('LineItem.count', -1) do
      delete :destroy, :id => @line_item.to_param
    end

    assert_redirected_to line_items_path
  end
end
