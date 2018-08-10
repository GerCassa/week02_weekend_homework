class Guest

  attr_reader :name, :fav_song

  def initialize(name, wallet, fav_song)
    @name = name
    @wallet = 0
    @fav_song = fav_song
  end

end
