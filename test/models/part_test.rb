require 'test_helper'

class PartTest < ActiveSupport::TestCase

  test "requires name" do
    part = Part.new()
    assert part.invalid?
    assert part.errors[:name].any?
  end

  test "requires name to be unique" do
    wheel = Part.create(name: 'Wheel')
    part = Part.new(name: 'Wheel')
    assert part.invalid?
    assert part.errors[:name].any?
  end

  test "has an article_image" do
    part = parts(:one)
    assert part.part_image.file.path, File.expand_path("../fixtures/files/sample.png", __FILE__)
  end

  test "uploads an article_image" do
    part = Part.create!(name: "Door Hanlde", part_image: fixture_file_upload('/files/sample.png', 'image/png'))
    assert(File.exists?(part.reload.part_image.file.path))
  end

end