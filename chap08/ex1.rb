array = []

user_input = "Hello"

while user_input != ""

user_input = gets.chomp

array.push [user_input]

end

array.pop

puts array.sort.join(", ")