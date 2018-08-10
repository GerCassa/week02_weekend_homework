class Room
  attr_reader :name, :capacity, :people_inside, :songs, :till

  def initialize(name, songs, till)
    @name = name
    @songs = songs
    @till = till
    @capacity = 10
    @people_inside = 0
  end

  def get_song_by_name(name)
    @songs.find {|song| song.name == name}
  end

  def add_people_to_room(guest)
    unless @people_inside == @capacity
      @people_inside += guest
    end
  end

end
