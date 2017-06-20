#Orange tree class

class Orange
    
    def initialize
        @oranges = 0
        @height = 0.1
        @age = 0
        
        puts "An orange tree is born!, it is #{@height} metres tall. Maybe it will grow oranges soon!"
    end
    
    def one_year_passes
    @oranges = 0
    @age += 1
    @height += 0.5
    
    puts "The orange tree grew a year older"
    
        if @age > 10
            puts "Your orange tree gloriously shuffled off of this mortal coil, say your goodbyes"
            goodbye = gets.chomp
            puts "You stared at the orange tree longingly and said '#{goodbye}'"
            exit
        elsif @age > 5
            @oranges = @age * 2
            puts "My oh my, #{@oranges} lovely oranges have grown!"
        else puts "Your orange tree is not yet of age to grow yummy oranges!"
        end
    end
     
    def height
        
    puts "Your orange tree is #{@height} metres, wooowwwweeeee!"
    
    end
    
    def count_oranges
        if @oranges > 0
         puts "My oh my, you have #{@oranges} lovely oranges!"
        else
            puts "No oranges left!!!"
        end
         
    end
    
    def pick_orange
        
        if @oranges > 0
            puts "You pick an orange"
            @oranges -= 1
            puts "Mmmm.. this orange is yummy"
        end
        
        count_oranges
        
    end
    
end

orange_tree = Orange.new
orange_tree.one_year_passes
orange_tree.one_year_passes
orange_tree.one_year_passes
orange_tree.height
orange_tree.pick_orange
orange_tree.one_year_passes
orange_tree.height
orange_tree.one_year_passes
orange_tree.one_year_passes
orange_tree.count_oranges
orange_tree.pick_orange
orange_tree.pick_orange
orange_tree.pick_orange
orange_tree.pick_orange
orange_tree.pick_orange
orange_tree.pick_orange
orange_tree.pick_orange
orange_tree.pick_orange
orange_tree.pick_orange
orange_tree.pick_orange
orange_tree.pick_orange
orange_tree.pick_orange
orange_tree.pick_orange
orange_tree.pick_orange
orange_tree.pick_orange
orange_tree.pick_orange
orange_tree.count_oranges
orange_tree.pick_orange
orange_tree.one_year_passes
orange_tree.one_year_passes
orange_tree.count_oranges
orange_tree.height
orange_tree.one_year_passes
orange_tree.count_oranges
orange_tree.height
orange_tree.count_oranges
orange_tree.pick_orange
orange_tree.pick_orange
orange_tree.count_oranges
orange_tree.one_year_passes
orange_tree.count_oranges
orange_tree.pick_orange
orange_tree.pick_orange
orange_tree.count_oranges
orange_tree.count_oranges
orange_tree.one_year_passes