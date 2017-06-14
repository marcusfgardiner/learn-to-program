puts "Talk to Grannnaaayyy!"

userinput = ""

while true

userinput = gets.chomp
if userinput == "BYE"
    break
elsif userinput == userinput.upcase
    puts "NO, NOT SINCE " + (1930 + rand(20)).to_s
else
    puts "HUH!? SPEAK UP SONNY"
end
    
end