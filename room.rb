class Room
  attr_reader :name, :capacity, :guests, :songs, :till

  def initialize(name, songs, till)
    @name = name
    @songs = songs
    @till = till
    @capacity = 5
    @guests = []
  end

  def get_song_by_name(name)
    @songs.find {|song| song.name == name}
  end

  def songs_list_by_name()
    @songs.name
  end

  def add_people_to_room(guest)
     if @guests.count < @capacity
     @guests << guest
    end
  end

    def remove_people_from_room(guest)
      @guests.delete(guest)
    end

  def add_new_song(new_song)
    @songs << new_song
  end




end
