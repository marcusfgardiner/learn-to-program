def ask question
    while true
        puts question
        reply = gets.chomp.downcase
        
        if (reply == "yes" || reply == "no")
            if reply == "yes"
                return 'true'
            end
            if reply == "no"
                return 'false'
            end
        else
            puts 'Please answer "yes" or "no".'
        end
    end
end
    
puts "Hello, and thank you for..."
puts

ask "Do you like eating tacos?"
ask "Do you like eating burritos?"
wets_bed = ask "Do you wet the bed?"
ask "Do you like eating poop?"

puts "DEBRIEFING"
puts "Do you wet the bed is the real key, the answer is: " + wets_bed.to_s

=begin
def ask question
    while true
        puts question
        reply = gets.chomp.downcase
        
        if (reply == "yes" || reply == "no")
            if reply == "yes"
                answer = true
            else
                answer = false
            end
            break
            # Key: this exits out of the method, which moves the program on to the next question in the ask list. It doesn't exit out of everything entirely
            # This break happens after a 'yes' or 'no' has been received, either, 
            # the key is that the answer variable becomes true or false, with the answer only stored for bed wetting
        else
            puts 'Please answer "yes" or "no".'
        end
    end
        
        answer 
end
    
puts "Hello, and thank you for..."
puts

ask "Do you like eating tacos?"
ask "Do you like eating burritos?"
wets_bed = ask "Do you wet the bed?"
ask "Do you like eating poop?"

puts "DEBRIEFING"
puts "Do you wet the bed is the real key, the answer is: " + wets_bed.to_s
=end