require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  test "requires url" do
    video = Video.new()
    assert video.invalid?
    assert video.errors[:url].any?
  end
end
