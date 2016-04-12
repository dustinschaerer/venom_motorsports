require 'test_helper'

class BarnFindsControllerTest < ActionController::TestCase
  setup do
    @barn_find = barn_finds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barn_finds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barn_find" do
    assert_difference('BarnFind.count') do
      post :create, barn_find: { admin_user_id: @barn_find.admin_user_id, content: @barn_find.content, date_published: @barn_find.date_published, published: @barn_find.published, slug: @barn_find.slug, title: @barn_find.title }
    end

    assert_redirected_to barn_find_path(assigns(:barn_find))
  end

  test "should show barn_find" do
    get :show, id: @barn_find
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barn_find
    assert_response :success
  end

  test "should update barn_find" do
    patch :update, id: @barn_find, barn_find: { admin_user_id: @barn_find.admin_user_id, content: @barn_find.content, date_published: @barn_find.date_published, published: @barn_find.published, slug: @barn_find.slug, title: @barn_find.title }
    assert_redirected_to barn_find_path(assigns(:barn_find))
  end

  test "should destroy barn_find" do
    assert_difference('BarnFind.count', -1) do
      delete :destroy, id: @barn_find
    end

    assert_redirected_to barn_finds_path
  end
end
