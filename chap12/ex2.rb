puts "What year were you born in?"

year_born=gets.chomp.to_i

puts "What month were you born in?"

month_born=gets.chomp.to_i

puts "What day were you born on?"

day_born=gets.chomp.to_i

how_old = ((Time.new-Time.local(year_born,month_born,day_born))/(60*60*24*365)).to_i

puts "You are #{how_old}, congratulations! SPANKING TIME"

puts "SPANK!"*how_old