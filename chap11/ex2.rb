#Using Cloud 9 so could not customise code to my own playlist

#the below takes all mp3 files from your computer and shuffles up
# the order completely randomly (shuffle method defined elsewhere)

all_mp3s = shuffle(Dir['**/*.mp3'])

# the below creates a text file m3u which is our playlist. The each method just  
# takes all mp3 files from your computer and writes the file path into
# the playlist text file, the \n is enter to go to the next line to
#write the path for the next song! 

File.open 'playlist.m3u', 'w' do |f|
    all_mp3s.each do |mp3|
        f.write mp3+"\n"
    end
end
puts "Done!"

