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


end
