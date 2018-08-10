class Guest

  attr_reader :name, :fav_song
  attr_accessor :wallet
  def initialize(name, wallet, fav_song)
    @name = name
    @wallet = wallet
    @fav_song = fav_song
  end

  def money_out(amount)
    @wallet -= amount
  end

end
