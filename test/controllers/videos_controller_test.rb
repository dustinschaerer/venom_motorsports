require 'test_helper'

class VideosControllerTest < ActionController::TestCase

  setup do
    @video = videos(:one)
    @dustin = admin_users(:dustin)
  end

  test "should get index" do
    sign_in @dustin
    get :index
    assert_response :success
    assert_not_nil assigns(:videos)
  end

  test "should get new" do
    sign_in @dustin
    get :new
    assert_response :success
  end

  test "should create video" do
    sign_in @dustin
    assert_difference('Video.count') do
      post :create, video: { description: @video.description, post_id: @video.post_id, url: @video.url }
    end
    assert_redirected_to video_path(assigns(:video))
  end

  test "should show video" do
    get :show, id: @video
    assert_response :success
  end

  test "should get edit" do
    sign_in @dustin
    get :edit, id: @video
    assert_response :success
  end

  test "should update video" do
    sign_in @dustin
    patch :update, id: @video, video: { description: @video.description, post_id: @video.post_id, url: @video.url }
    assert_redirected_to video_path(assigns(:video))
  end

  test "should destroy video" do
    sign_in @dustin
    assert_difference('Video.count', -1) do
      delete :destroy, id: @video
    end
    assert_redirected_to videos_path
  end
end
