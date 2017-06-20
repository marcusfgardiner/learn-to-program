def grandfather_clock &block
    
    incorrect_hour = Time.new.hour
    
    if  incorrect_hour > 12
        current_hour = (incorrect_hour - 12)
        
    elsif incorrect_hour > 0 || incorrect_hour < 13
        current_hour = incorrect_hour
    elsif incorrect_hour == 0
        current_hour = 12
    end
    
    current_hour.times do
        block.call
    end
    
end

grandfather_clock do 
    puts "DONG!"
end

puts "gap"

grandfather_clock do 
    #2 dongs this time
    puts "DONG!"*2
end
