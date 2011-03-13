require 'test_helper'

class ProductsControllerTest < ActionController::TestCase

  setup do
    #@product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    @update = {
        :title => 'MyString1',
        :description => 'Wibbles are fun',
        :image_url => 'images/lorem.jpg',
        :price => 19.95
    }
    assert_difference('Product.count') do
      post :create, :product => @update
    end
    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    @product = Product.find(980190981)
    assert_not_nil @product
    get :show, :id => @product.to_param
    assert_response :success
  end

  test "should get edit" do
    @product = Product.find(980190981)
    assert_not_nil @product
    get :edit, :id => @product.to_param
    assert_response :success
  end

  test "should update product" do
    @product = Product.find(980190981)
    assert_not_nil @product
    @product.description += ". Update test"
    put :update, :id => @product.to_param, :product => @product.attributes
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    @product = Product.find(980190980)
    assert_not_nil @product
    assert_difference('Product.count', -1) do
      delete :destroy, :id => @product.to_param
    end
    assert_redirected_to products_path
  end
end
