require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../song")

class SongTest < MiniTest::Test

  def setup
    @song = Song.new ("Let it be")
  end

  def test_song_has_name
    assert_equal("Let it be", @song.name)
  end

end
