require 'test_helper'

class PartsControllerTest < ActionController::TestCase
  setup do
    @part = parts(:one)
    @dustin = admin_users(:dustin)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parts)
  end

  test "should get new" do
    sign_in @dustin
    get :new
    assert_response :success
  end

  test "should show part" do
    get :show, id: @part
    assert_response :success
    assert_not_nil assigns(:part)
  end

  test "should get new part" do
    sign_in @dustin
    get :new
    assert_response :success
    assert_not_nil assigns(:part)
  end

  test "should get edit for admin" do
    sign_in @dustin
    get :edit, id: @part
    assert_response :success
  end

  test "should create part" do
    sign_in @dustin
    assert_difference('Part.count') do
      post :create, part: { name: "Window", amount: @part.amount, part_image: @part.part_image,  notes: @part.notes, part_number: @part.part_number }
    end
    assert_redirected_to part_path(assigns(:part))
  end

  test "should update part" do
    sign_in @dustin
    patch :update, id: @part, part: { id: @part.id, amount: @part.amount, part_image: @part.part_image, name: @part.name, notes: @part.notes, part_number: @part.part_number }
    assert_redirected_to part_path(assigns(:part))
  end

  test "should destroy part" do
    sign_in @dustin
    assert_difference('Part.count', -1) do
      delete :destroy, id: @part
    end
    assert_redirected_to parts_path
  end
end
