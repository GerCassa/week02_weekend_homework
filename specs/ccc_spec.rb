require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../ccc")
require_relative ("../room")
require_relative ("../guest")

class CccTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Ozzy", 50, "Planet Caravan")
    @guest2 = Guest.new("Dave", 30, "Smells Like Teen Spirit")
    @room1 = Room.new("Rock Room", @rock_songs, 100)
    @room2 = Room.new("Pop Room", @pop_songs, 100)
    rooms = [@room1, @room2]
    @ccc = Ccc.new(rooms)
  end

  def test_ccc_has_rooms
    assert_equal(2, @ccc.rooms.count)
  end

  def test_ccc_can_check_in
    @ccc.check_in(@ccc.rooms[0], @guest1)
    @ccc.check_in(@ccc.rooms[0], @guest2)
    assert_equal(2, @ccc.rooms[0].guests.count)
    assert_equal(20, @guest2.wallet)
  end

  def test_ccc_can_check_out
    @ccc.check_in(@ccc.rooms[0], @guest1)
    @ccc.check_in(@ccc.rooms[0], @guest2)
    @ccc.check_out(@ccc.rooms[0], @guest1)
    assert_equal(1, @ccc.rooms[0].guests.count)
  end

end
