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

end
