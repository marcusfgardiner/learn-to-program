puts "Please give me your first name"
First_name = gets.chomp
puts "Please give me your middle name"
Second_name = gets.chomp
puts "Please give me your last name"
Third_name = gets.chomp
puts "Hello " + First_name + " " + Second_name + " " + Third_name

full_name_length = (First_name + Second_name + Third_name).size.to_s
puts "Also, did you know your name is " + full_name_length + " letters long"