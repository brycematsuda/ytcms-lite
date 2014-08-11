require 'test_helper'

class EpisodeTest < ActiveSupport::TestCase
  test "episode name must not be empty" do
    episode = Episode.new
    assert episode.invalid?
    assert episode.errors[:name].any?
  end

  test "episode content must not be empty" do
    episode = Episode.new(:name => episodes(:no_content).name)
    assert episode.invalid?
    assert = episode.errors[:embed_code].any?
  end
end
