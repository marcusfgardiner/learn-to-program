
def new_roman_numeral input

thous = (input / 1000)
hunds = (input % 1000 / 100)
tens = (input % 100 / 10)
ones = (input % 10 )

roman = "M" * thous

if hunds == 9
    roman = roman + "CM"
elsif hunds == 4
    roman = roman + "CD"
else
    roman = roman + "D" * (input % 1000 / 500)
    roman = roman + "C" * (input % 500 / 100)
end

if tens == 9
    roman = roman + "XC"
elsif tens == 4
roman = roman + "XL"
else
    roman = roman + "L" * (input % 100 / 50)
    roman = roman + "X" * (input % 50/10)
end

if ones == 9 
    roman = roman + "IX"
    elsif ones == 4
roman = roman + 'IV'
else
roman = roman + 'V' * (input % 10 / 5)
roman = roman + 'I' * (input % 5 / 1)
end
puts roman
end


puts "Give me a number and I will make it ROMAN" 
userinput = gets.chomp.to_i
new_roman_numeral userinput

=begin

Initial code type attempt - hash structure would not work for new challenge

def new_roman_numeral input

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

hunds = (input % 1000 / 100)
tens = (input % 100 / 10)
ones = (input % 10 )


if hunds == 9 
    array.push "CM"
elsif hunds == 4
    array.push "CD"

end
}

puts array.join

end

puts "Give me a number and I will make it ROMAN" 
userinput = gets.chomp.to_i
new_roman_numeral userinput

=end