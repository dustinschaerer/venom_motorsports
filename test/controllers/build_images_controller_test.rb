# require 'test_helper'

# class BuildImagesControllerTest < ActionController::TestCase
#   setup do
#     # @build_image = build_images(:one)
#   end

#   test "should get index" do
#     get :index
#     assert_response :success
#     assert_not_nil assigns(:build_images)
#   end

#   test "should get new" do
#     get :new
#     assert_response :success
#   end

#   test "should create build_image" do
#     assert_difference('BuildImage.count') do
#       post :create, build_image: { build_id: @build_image.build_id, image: @build_image.image }
#     end

#     assert_redirected_to build_image_path(assigns(:build_image))
#   end

#   test "should show build_image" do
#     get :show, id: @build_image
#     assert_response :success
#   end

#   test "should get edit" do
#     get :edit, id: @build_image
#     assert_response :success
#   end

#   test "should update build_image" do
#     patch :update, id: @build_image, build_image: { build_id: @build_image.build_id, image: @build_image.image }
#     assert_redirected_to build_image_path(assigns(:build_image))
#   end

#   test "should destroy build_image" do
#     assert_difference('BuildImage.count', -1) do
#       delete :destroy, id: @build_image
#     end

#     assert_redirected_to build_images_path
#   end
# end
