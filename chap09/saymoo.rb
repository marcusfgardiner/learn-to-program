def say_moo number_of_moos
    puts 'mooooo....'*number_of_moos
    'yellow sub'
end

# x will capture the value of the method, so putting 'x' will puts the value of the method, rather than running the method again
x = say_moo 3

puts x
puts x
puts x


=begin

What happens if you puts the whole method rather than the value of the method

def say_moo number_of_moos
    puts 'mooooo....'*number_of_moos
    'yellow sub'
end


puts say_moo 3
puts say_moo 3
puts say_moo 3
puts say_moo 3

----------------------------
Why do the moos come up first:

def say_moo number_of_moos
    puts 'mooooo....'*number_of_moos
    'yellow sub'
end

y = say_moo 3
x = say_moo 3

puts x
puts x
puts x
=end


