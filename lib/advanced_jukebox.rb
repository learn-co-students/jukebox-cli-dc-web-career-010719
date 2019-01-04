require "pry"


my_songs = {
  "Go Go GO" => '/Users/Shannon/Desktop/dev/Pre-work/jukebox-cli/audio/Emerald-Park/01.mp3',
  "LiberTeens" => '/Users/Shannon/Desktop/dev/Pre-work/jukebox-cli/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  '/Users/Shannon/Desktop/dev/Pre-work/jukebox-cli/audio/Emerald-Park/03.mp3',
  "Guiding Light" => '/Users/Shannon/Desktop/dev/Pre-work/jukebox-cli/audio/Emerald-Park/04.mp3',
  "Wolf" => '/Users/Shannon/Desktop/dev/Pre-work/jukebox-cli/audio/Emerald-Park/05.mp3',
  "Blue" => '/Users/Shannon/Desktop/dev/Pre-work/jukebox-cli/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => '/Users/Shannon/Desktop/dev/Pre-work/jukebox-cli/audio/Emerald-Park/07.mp3'
  }

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  n = 0
  my_songs.collect do |song, location|
    n += 1
    puts "#{n}. #{song}"
  end
end



def play(my_songs)
  puts "Please enter a song name:"
  input = gets.chomp
  if my_songs.has_key?(input)
    puts "Playing #{input}"
    system 'open '+my_songs[input]
  else
    puts "Invalid input, please try again"
    play(my_songs)
  end
end



def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  while command != "exit"
    if command == "help"
      help
    elsif command == "list"
      list(my_songs)
    elsif command == "play"
      play(my_songs)
    else
      puts "Invalid input, please try again"
    end
    puts "Please enter a command:"
    command = gets.chomp
  end
  if command == "exit"
    exit_jukebox
  end
end
