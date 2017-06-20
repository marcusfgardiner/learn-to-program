class Die
    
    def initialize
        roll
    end
    
    def roll
        @number_showing = 1 + rand(6)
    end
    
    def showing
        @number_showing
    end
    
    def cheat
        puts "what number shall we cheat the die into showing?"
        cheat_number = gets.chomp.to_i
        
        while cheat_number <1 || cheat_number >6
        puts "That isn't an approproiate die number! Set it again"
        cheat_number = gets.chomp.to_i
        end
        @number_showing = cheat_number
        puts "Die is now showing #{cheat_number}...muahahahaha"
    end
end

Die.new.cheat