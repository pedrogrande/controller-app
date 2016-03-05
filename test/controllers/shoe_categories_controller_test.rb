require 'test_helper'

class ShoeCategoriesControllerTest < ActionController::TestCase
  setup do
    @shoe_category = shoe_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shoe_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shoe_category" do
    assert_difference('ShoeCategory.count') do
      post :create, shoe_category: { description: @shoe_category.description, name: @shoe_category.name }
    end

    assert_redirected_to shoe_category_path(assigns(:shoe_category))
  end

  test "should show shoe_category" do
    get :show, id: @shoe_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shoe_category
    assert_response :success
  end

  test "should update shoe_category" do
    patch :update, id: @shoe_category, shoe_category: { description: @shoe_category.description, name: @shoe_category.name }
    assert_redirected_to shoe_category_path(assigns(:shoe_category))
  end

  test "should destroy shoe_category" do
    assert_difference('ShoeCategory.count', -1) do
      delete :destroy, id: @shoe_category
    end

    assert_redirected_to shoe_categories_path
  end
end
