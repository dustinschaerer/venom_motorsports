require 'test_helper'

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

end