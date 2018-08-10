require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../song")

class SongTest < MiniTest::Test

  def setup
    @song = Song.new ("Let it be"), ("Artist: The Beatles, Year: 1970, Lentgh: 3:14mins"), ("https://www.youtube.com/watch?v=QQ3tlLq_Z14")
  end

  def test_song_has_name
    assert_equal("Let it be", @song.name)
  end

  def test_song_has_details
    assert_equal("Artist: The Beatles, Year: 1970, Lentgh: 3:14mins", @song.details)
  end

  def test_song_has_link
    assert_equal("https://www.youtube.com/watch?v=QQ3tlLq_Z14", @song.link)
  end

end
