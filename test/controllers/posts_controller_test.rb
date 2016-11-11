require 'test_helper'

class PostsControllerTest < ActionController::TestCase

  setup do
    @post = posts(:one)
    @dustin = admin_users(:dustin)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    sign_in @dustin
    get :new
    assert_response :success
  end

  test "must be authenticated to get new" do
    get :new
    assert_response 302
  end

  test "should create post" do
    sign_in @dustin
    assert_difference('Post.count') do
      post :create, post: { admin_user_id: @post.admin_user_id, article_image: @post.article_image, category_id: @post.category_id, content: @post.content, published: @post.published, published_on: @post.published_on, slug: "new_article", teaser: @post.teaser, title: "2042 Tesla X1" }
    end
    assert_redirected_to post_path(assigns(:post))
  end


  test "must be authenticated to create" do
    post :create, post: { admin_user_id: @post.admin_user_id, article_image: @post.article_image, category_id: @post.category_id, content: @post.content, published: @post.published, published_on: @post.published_on, slug: "new_article", teaser: @post.teaser, title: "2042 Tesla X1" }
    assert_response 302
  end

  test "should show post" do
    get :show, id: @post
    assert_response :success
  end

  test "should get edit" do
    sign_in @dustin
    get :edit, id: @post
    assert_response :success
  end

  test "must be authenticated to edit" do
    get :edit, id: @post
    assert_response 302
  end

  test "should update post" do
    sign_in @dustin
    patch :update, id: @post, post: { admin_user_id: @post.admin_user_id, article_image: @post.article_image, category_id: @post.category_id, content: @post.content, published: @post.published, published_on: @post.published_on, slug: @post.slug, teaser: @post.teaser, title: @post.title }
    assert_redirected_to post_path(assigns(:post))
  end

  test "must be authenticated to update post" do
    patch :update, id: @post, post: { admin_user_id: @post.admin_user_id, article_image: @post.article_image, category_id: @post.category_id, content: @post.content, published: @post.published, published_on: @post.published_on, slug: @post.slug, teaser: @post.teaser, title: @post.title }
    assert_response 302
  end

  test "should destroy post" do
    sign_in @dustin
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end
    assert_redirected_to posts_path
  end

  test "must be authenticated to delete post" do
    delete :destroy, id: @post
    assert_response 302
  end

end