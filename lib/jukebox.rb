require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]



def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(array)
  n = 0
  array.collect do |song|
    n += 1
    puts "#{n}. #{song}"
  end
end



def play(array)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if input.to_i > 0 && input.to_i < 10
    puts "Playing #{array[input.to_i - 1]}"
  elsif array.include?(input)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end



def exit_jukebox
  puts "Goodbye"
end


def run(array)
  help
  puts "Please enter a command:"
  command = gets.chomp
  while command != "exit"
    if command == "help"
      help
    elsif command == "list"
      list(array)
    elsif command == "play"
      play(array)
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
