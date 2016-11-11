require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase

  setup do
    @builds = categories(:builds)
    @barn_finds = categories(:barn_finds)
    @engine_builds = categories(:engine_builds)
    @category = Category.new(name: "Race Cars", sort: 10, slug: "race_cars")
    @dustin = admin_users(:dustin)
  end

  test "should get new" do
    sign_in @dustin
    get :new
    assert_response :success
  end

  test "should create category" do
    sign_in @dustin
    assert_difference('Category.count') do
      post :create, category: { name: @category.name, slug: @category.slug, sort: @category.sort }
    end

    assert_redirected_to category_path(assigns(:category))
  end

  test "should show category" do
    get :show, id: @builds
    assert_response :success
  end

  test "should get edit" do
    sign_in @dustin
    get :edit, id: @builds
    assert_response :success
  end

  test "should update category" do
    sign_in @dustin
    patch :update, id: @builds, category: { name: @builds.name, slug: @builds.slug, sort: @builds.sort }
    assert_redirected_to category_path(assigns(:category))
  end

  test "should destroy category with no associated posts" do
    sign_in @dustin
    assert_difference('Category.count', -1) do
      delete :destroy, id: @engine_builds
    end

    assert_redirected_to root_path
  end

  test "should not destroy category with associated post" do
    sign_in @dustin
    assert_difference('Category.count', 0) do
      delete :destroy, id: @builds
    end

    assert_redirected_to category_path(@builds)
  end

  test 'should not get an index action' do
    assert_raises(ActionController::UrlGenerationError) do
      get :index
    end
  end
end
