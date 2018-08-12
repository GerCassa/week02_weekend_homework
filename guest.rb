class Guest

  attr_reader :name, :fav_song
  attr_accessor :wallet
  def initialize(name, wallet, fav_song)
    @name = name
    @wallet = wallet
    @fav_song = fav_song
  end

  def money_out(amount)
    if amount < @wallet
    @wallet -= amount
  end
  end

  def check_fav_song(songs)
    return "Whoo!" if songs.include?(@fav_song)
  end
end
