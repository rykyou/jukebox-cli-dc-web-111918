#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
 "Go Go GO" => '/home/organized-revert-5689/jukebox-cli-dc-web-111918/lib/jukebox-cli/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/home/organized-revert-5689/jukebox-cli-dc-web-111918/lib/jukebox-cli/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/home/organized-revert-5689/jukebox-cli-dc-web-111918/lib/jukebox-cli/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/home/organized-revert-5689/jukebox-cli-dc-web-111918/lib/jukebox-cli/audio/Emerald-Park/04.mp3',
 "Wolf" => '/home/organized-revert-5689/jukebox-cli-dc-web-111918/lib/jukebox-cli/audio/Emerald-Park/05.mp3',
 "Blue" => '/home/organized-revert-5689/jukebox-cli-dc-web-111918/lib/jukebox-cli/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/home/organized-revert-5689/jukebox-cli-dc-web-111918/lib/jukebox-cli/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(my_songs)
  my_songs.each do |hash|
    keys = hash.keys 
    keys.each_with_index do {|song, index| puts "#{index + 1}. #{song}"}
  end
end

def play(my_songs)
  puts "Please enter a song name:"
  user_input = gets.chomp 
  output = ""
  my_songs.each do |hash|
    keys = hash.keys
    keys.each do |song|
      if user_input == song
        output = system "open #{hash[song]}"
      end 
    end 
  end 
  if output.length > 0
    puts output
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
end
