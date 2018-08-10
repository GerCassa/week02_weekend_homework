require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../room")
require_relative ("../guest")
require_relative ("../song")

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Planet Caravan", "Artist: Black Sabbath, Year: 1970, Length: 04:30mins","https://www.youtube.com/watch?v=QpulIrEy_b8")
    @song2 = Song.new("Ramble On", "Artist: Led Zeppelin, Year: 1969, Length: 04:45mins","https://www.youtube.com/watch?v=MHljFusa5OI")
    @song3 = Song.new("Highway Star", "Artist: Deep Purpple, Year: 1972, Length: 06:15mins", "https://www.youtube.com/watch?v=xHp96zx1ge0")
    @song4 = Song.new("Money", "Artist: Pink Floyd, Year: 1973, Length: 03:40mins", "https://www.youtube.com/watch?v=b1Lk16vFgcA")
    @song5 = Song.new("Come Together", "Artist: The Beatles, Year: 1969, Length: 03:50mins", "https://www.youtube.com/watch?v=iKIbKbD3U_8")
    rock_songs = [@song1, @song2, @song3, @song4, @song5]

    @room = Room.new("Rock Room", 0, rock_songs, 100)
  end

  def test_room_has_name
    assert_equal("Rock Room", @room.name)
  end

  def test_room_has_capacity
    assert_equal(0, @room.capacity)
  end

  def test_room_has_Planet_Caravan
    result = @room.get_song_by_name("Ramble On")
    assert_equal(@song2, result)
  end

  def test_room_has_till
    assert_equal(100, @room.till)
  end



end
