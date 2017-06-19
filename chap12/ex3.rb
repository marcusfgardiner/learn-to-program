def roman_to_integer roman
    
    digit_values = {
        'i' => 1,
        'v' => 5,
        'x' => 10,
        'l' => 50,
        'c' => 100,
        'd' => 500,
        'm' => 1000}
    
    total_value = 0
    previous_letter_value = 0
    current_letter_value = 0
    
    current_index = roman.length - 1

    roman.downcase!
    
    while current_index >= 0
    
    current_letter = roman[current_index]
    
    current_letter_value = digit_values[current_letter]
    
        if !current_letter_value
            puts "This is not a valid roman numeral!"
            return
        end
        
    if current_letter_value < previous_letter_value
        
        total_value = total_value - current_letter_value
        
        else
    
        total_value = total_value + current_letter_value
    end
    
    previous_letter_value = current_letter_value
    
    current_index -= 1
    
    end
    
    total_value

end

puts (roman_to_integer('MCMXCIX'))