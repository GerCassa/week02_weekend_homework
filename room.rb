class Room
  attr_reader :name, :capacity, :people_inside, :songs, :till

  def initialize(name, songs, till)
    @name = name
    @capacity = 10
    @people_inside = 0
    @songs = songs
    @till = till
  end

  def get_song_by_name(name)
    @songs.find {|song| song.name == name}
  end


end
