require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../room")
require_relative ("../guest")
require_relative ("../song")

class RoomTest < MiniTest::Test

  def setup
    song1 = Song.new("Planet Caravan")
    song2 = Song.new("Inmigrant Song")
    song3 = Song.new("Smoke in the Water")
    song4 = Song.new("Money")
    song5 = Song.new("Come Together")
    songs = [song1, song2, song3, song4, song5]

    @room = Room.new("Rock Room", 10, songs, 100)
  end



end
