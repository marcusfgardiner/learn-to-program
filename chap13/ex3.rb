#interactive baby dragon

# @ instance variable is an instance of that class variable (used in defining classes and having variable values by pulled across methods in this class etc)

class Dragon
    
    def initialize name
        @name = name
        @asleep = false
        @stuff_in_belly = 10
        @stuff_in_intestine = 0
        
        puts "#{@name} is born"
        
    end
    

    
    def feed
        puts "You feed #{@name}"
        @stuff_in_belly = 10
        passage_of_time
    end
    
    def walk
        puts "You walk #{@name}"
        @stuff_in_intestine = 0
        passage_of_time
    end
    
    def put_to_bed
        puts "You put #{@name} to bed"
        @asleep = true
        3.times do
            if @asleep
                passage_of_time
            end
            if @asleep 
                puts "#{@name} snores, filling the room with smoke"
            end
        end
        
        if @asleep
            @asleep = false
            puts "#{@name} wakes up slowly"
        end
    end
    
    def toss
        puts "You toss #{@name} into the air"
        puts "He giggles, which singes your eyebrows"
        passage_of_time
    end
    
    def rock
        puts "You rock #{@name} gently"
        @asleep = true
        puts "He briefly dozes off..."
        passage_of_time
        if @asleep
            @asleep = false
            puts "...but wakes when you stop"
        end
    end
    
    private
    
    def hungry?
        @stuff_in_belly <= 2
    end
    
    def poopy?
        @stuff_in_intestine >= 8
    end
    
    def passage_of_time
        if @stuff_in_belly > 0
            @stuff_in_belly -= 1
            @stuff_in_intestine += 1
        else
            if @asleep
                @asleep = false
                puts "He wakes up suddenly!"
            end
               
            puts "#{@name} is starving! In desperation, he ate YOU!" 
            exit
        end
        
        if @stuff_in_intestine >= 10
            @stuff_in_intestine = 0
            puts "Whoops! #{@name} had an accident..."
        end
        
        if hungry?
            if @asleep
                @asleep = false
                puts "He wakes up suddenly!"
            end
            
            puts "#{@name}'s stomach grumbles"
        end
        
        if poopy?
            if @asleep
                @asleep = false
                puts "He wakes up suddenly!"
            end
            puts "#{@name} does the potty dance.."
        end
    end
end

#---------------------------------
# user interaction so this new class works as an active program when you execute the file


puts "What would you like to call your baby dragon?"
name = gets.chomp
pet = Dragon.new name

while true
    puts
    puts 'commands: feed, toss, walk, rock, put to bed, exit'
    command = gets.chomp.downcase
        if command == 'exit'
        exit
        elsif command == 'feed'
        pet.feed
        elsif command == 'toss'
        pet.toss
        elsif command == 'walk'
        pet.walk
        elsif command == 'rock'
        pet.rock
        elsif command == 'put to bed'
        pet.put_to_bed
        else
        puts 'Huh? Please type one of the commands.'
        end
end




=begin tried to solve it using a hash -> Did not provide a better solution/ couldn't call methods using hash
        command_hash = Hash.new
        command_hash = {
        feed: "feed", walk: "walk", bed: "put_to_bed", toss: "toss", rock: "rock", exit: "exit"
        }


        while true
        puts "Choose a command for your baby dragon: feed, walk, bed, toss, rock or exit"
        command = gets.chomp.downcase.to_sym
            if command_hash[command] = nil
                puts "That is not a valid command, try: feed, walk, bed, toss, rock or exit"
            else pet.(command_hash[command])
            end
        end

=end