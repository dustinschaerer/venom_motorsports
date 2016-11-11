require 'test_helper'
require 'action_dispatch/testing/test_process'

class PostTest < ActiveSupport::TestCase

  test "requires title" do
    post = Post.new()
    assert post.invalid?
    assert post.errors[:title].any?
  end

  test "is valid with a title" do
    post = Post.new(title: "Awesome Sauce")
    assert post.valid?
    assert_not post.errors[:title].any?
  end

  test "has an article_image" do
    post = posts(:one)
    assert post.article_image.file.path, File.expand_path("../fixtures/files/sample.png", __FILE__)
  end

  test "uploads an article_image" do
    post = Post.create!(title: "Awesome Sauce", article_image: fixture_file_upload('/files/sample.png', 'image/png'))
    assert(File.exists?(post.reload.article_image.file.path))
  end


end

