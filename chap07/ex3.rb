puts "Talk to Grannnaaayyy!"

userinput = ""

userinput = gets.chomp

while true

if userinput == "BYE"
    puts "CAN'T HEAR YA SONNY" 
    userinput = gets.chomp
    if userinput == "BYE"
        puts "STILL CAN'T HEAR YA SONNY" 
        userinput = gets.chomp
        if  userinput == "BYE"
            break
        end
    end
    
elsif userinput == userinput.upcase
    puts "NO, NOT SINCE " + (1930 + rand(20)).to_s
    userinput = gets.chomp
else
    puts "HUH!? SPEAK UP SONNY"
    userinput = gets.chomp
end

end