require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  test "should get index" do
    get :home
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should not get manage page for non-admin" do
    get :manage
    assert_response 302
  end

  test "should get manage page for admin" do
    @dustin = admin_users(:dustin)
    sign_in @dustin
    get :manage
    assert_response :success
  end

end
