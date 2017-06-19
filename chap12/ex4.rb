birth_dates = {}

File.read('birthdays.txt').each_line {|line|
   first_comma = 0
    while line[first_comma] != ',' && first_comma < line.length
        first_comma += 1
    end
    
    name = line[0..(first_comma - 1)]
    date = line[first_comma..-1]
    
    birth_dates[name] = date
    }

    puts "Who's BDAAAYY??"
    
    name = gets.chomp 

    while !birth_dates[name] 
    puts "That name is not on the list. Who's BDAAAYY?? "
    name = gets.chomp 
    end
    
    puts "#{name}'s date of birth is: " + birth_dates[name].to_s

puts birth_dates