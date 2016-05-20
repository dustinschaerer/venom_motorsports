require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  test "requires name" do
    category = Category.new()
    assert category.invalid?
    assert category.errors[:name]
  end

  test "requires sort" do
    category = Category.new()
    assert category.invalid?
    assert category.errors[:sort]
  end

  test "requires slug" do
    category = Category.new()
    assert category.invalid?
    assert category.errors[:slug]
  end

  test "is valid with all attributes" do
    category = Category.new(name: 'Awesome Sauce',
                            sort: 10,
                            slug: 'awesome_sauce')
    assert category.valid?
    assert category.errors.empty?
  end


end
