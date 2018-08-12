require_relative ("./ccc.rb")
require_relative ("./room.rb")
require_relative ("./guest.rb")
require_relative ("./song.rb")
require ("launchy")

def welcome_to_Karaoke_House
  puts "<<<<<<<<<<<<<<Welcome To KARAOKE HOUSE!!!>>>>>>>>>>>>>>>>>>>"
  puts "How many are you today??"
  @guest_numer = []
  guests = gets.chomp.to_i
  @guest_numer << guests

  puts "<<<<<<<<<<<<<<<<<<<Perfect! Come this way..>>>>>>>>>>>>>>>>>>>"
  puts "What room would you like to go to today?"
  puts "Type 1 for Rock Room!"
  puts "Type 2 for Pop Room!"
  input = gets.chomp
  if input == "1"
    p "SELECT YOUR ROCK SONG:
    1) Planet Caravan,
    2) Ramble On,
    3) Highway Star,
    4) Money,
    4) Come Together."
  end
    song = gets.chomp

  if song == "1"
      Launchy.open("https://www.youtube.com/watch?v=QpulIrEy_b8")
    elsif  song == "2"
      Launchy.open("https://www.youtube.com/watch?v=MHljFusa5OI")
    elsif  song == "3"
      Launchy.open("https://www.youtube.com/watch?v=xHp96zx1ge0")
    elsif  song == "4"
      Launchy.open("https://www.youtube.com/watch?v=b1Lk16vFgcA")
    elsif  song == "5"
      Launchy.open("https://www.youtube.com/watch?v=m11dnWR7Kuc")
    else
    puts "Sorry, not a song in the list"
  end
end

welcome_to_Karaoke_House
