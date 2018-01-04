require 'test_helper'

class MenuItemTypesControllerTest < ActionController::TestCase
  setup do
    @menu_item_type = menu_item_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menu_item_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu_item_type" do
    assert_difference('MenuItemType.count') do
      post :create, menu_item_type: { html: @menu_item_type.html, name: @menu_item_type.name, sort: @menu_item_type.sort }
    end

    assert_redirected_to menu_item_type_path(assigns(:menu_item_type))
  end

  test "should show menu_item_type" do
    get :show, id: @menu_item_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menu_item_type
    assert_response :success
  end

  test "should update menu_item_type" do
    patch :update, id: @menu_item_type, menu_item_type: { html: @menu_item_type.html, name: @menu_item_type.name, sort: @menu_item_type.sort }
    assert_redirected_to menu_item_type_path(assigns(:menu_item_type))
  end

  test "should destroy menu_item_type" do
    assert_difference('MenuItemType.count', -1) do
      delete :destroy, id: @menu_item_type
    end

    assert_redirected_to menu_item_types_path
  end
end
