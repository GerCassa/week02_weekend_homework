require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../ccc")
require_relative ("../room")

class CccTest < MiniTest::Test

  def setup
    @room1 = Room.new("Rock Room", 10, 0, rock_songs, 100)
    @room2 = Room.new("Pop Room"), 10, 0, pop_songs, 100)
    rooms = [@room1, @room2]
    @ccc = Ccc.new(rooms, 0)
  end

end
