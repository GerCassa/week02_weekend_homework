class Ccc
  attr_reader :rooms, :till

  def initialize(rooms)
    @rooms = rooms
    @till = 0
    @price = 10
  end

  def check_in(room, guest)
    if room.guests.count < room.capacity
      charge = guest.money_out(@price)
      if charge
        room.guests << guest
      end
    end
  end

  def check_out(room, guest)
    room.guests.delete(guest)
  end

end
