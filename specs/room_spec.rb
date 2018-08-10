require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../room")
require_relative ("../guest")
require_relative ("../song")

class RoomTest < MiniTest::Test

  def setup
    song1 = Song.new("Planet Caravan", "Artist: Black Sabbath, Year: 1970, Length: 04:30mins","https://www.youtube.com/watch?v=QpulIrEy_b8")
    song2 = Song.new("Ramble On", "Artist: Led Zeppelin, Year: 1969, Length: 04:45mins","https://www.youtube.com/watch?v=MHljFusa5OI")
    song3 = Song.new("Highway Star", "Artist: Deep Purpple, Year: 1972, Length: 06:15mins", "https://www.youtube.com/watch?v=xHp96zx1ge0")
    song4 = Song.new("Money", "Artist: Pink Floyd, Year: 1973, Length: 03:40mins", "https://www.youtube.com/watch?v=b1Lk16vFgcA")
    song5 = Song.new("Come Together", "Artist:, Year: 1969, Length: 03:50mins", "https://www.youtube.com/watch?v=iKIbKbD3U_8")
    rock_songs = [song1, song2, song3, song4, song5]

    @room = Room.new("Rock Room", 10, rock_songs, 100)
  end



end
