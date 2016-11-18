require 'test_helper'

class FootersControllerTest < ActionController::TestCase
  setup do
    @footer = footers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:footers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create footer" do
    assert_difference('Footer.count') do
      post :create, footer: { copyright: @footer.copyright, first_column: @footer.first_column, links: @footer.links, second_column: @footer.second_column, third_column: @footer.third_column }
    end

    assert_redirected_to footer_path(assigns(:footer))
  end

  test "should show footer" do
    get :show, id: @footer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @footer
    assert_response :success
  end

  test "should update footer" do
    patch :update, id: @footer, footer: { copyright: @footer.copyright, first_column: @footer.first_column, links: @footer.links, second_column: @footer.second_column, third_column: @footer.third_column }
    assert_redirected_to footer_path(assigns(:footer))
  end

  test "should destroy footer" do
    assert_difference('Footer.count', -1) do
      delete :destroy, id: @footer
    end

    assert_redirected_to footers_path
  end
end
