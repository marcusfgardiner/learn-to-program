def old_roman_numeral input

array = []

roman_hash = {
M: 1000,
D: 500,
C: 100,
L: 50,
X: 10,
V: 5,
I: 1
}

roman_hash.each {|key, value| 
multiplier = input / value
next if multiplier == 0
array.push key.to_s * multiplier 
input = input - (multiplier*value)
}

puts array.join

end



puts "Give me a number and I will make it ROMAN" 
userinput = gets.chomp.to_i
old_roman_numeral userinput

