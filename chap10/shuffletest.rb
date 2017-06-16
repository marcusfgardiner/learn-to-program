def truffleshuffle array
    
    shuffled_array = []
    number_of_items = (array.length)

    array.each {|item|
    
    random_index = rand(number_of_items)
    
    unless shuffled_array[random_index].nil?
    
    random_index = rand(number_of_items)
    
    end
    
    shuffled_array[random_index] = item
        
    }

    puts shuffled_array.join(", ")
    
end

array = [1,2,3,4,5,6,7,8,9]

truffleshuffle array