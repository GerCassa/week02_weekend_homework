require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../ccc")
require_relative ("../room")

class CccTest < MiniTest::Test

  def setup
    @room1 = Room.new("Rock Room", @rock_songs, 100)
    @room2 = Room.new("Pop Room", @pop_songs, 100)
    rooms = [@room1, @room2]
    @ccc = Ccc.new(rooms)
  end

  def test_ccc_has_rooms
    assert_equal(2, @ccc.rooms.count)
  end


end
