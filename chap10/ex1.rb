# Shuffle

def truffleshuffle array
    
    shuffled_array = []
    
    while array.length > 0
    
    random_index = rand(array.length)
    
    current_index = 0
    new_arr = []
    
    array.each { |item|
        if current_index == random_index
            shuffled_array.push item
        else
            new_arr.push item
        end
        
        current_index = current_index + 1
    }
    
    array = new_arr
    end
    
  puts  shuffled_array.join(", ")
    
end


array = ["beeeast","c","feeaaad","c","d","e","e","e","e","e","e","e"]

truffleshuffle array

=begin

def truffleshuffle array
    
    shuffled_array = []
    number_of_items = (array.length)

    array.each {|item|
    
    random_number = rand(number_of_items)
    
    unless shuffled_array[random_number] == ""
    
    random_number = rand(number_of_items)
    
    end
    
    shuffled_array[random_number] = item
        
    }

    puts shuffled_array.join(", ")
    
end

array = ["d","e","e","e","e","e","e","e"]

truffleshuffle array

=end

=begin


def truffleshuffle array
    
    shuffled_array = []
    number_of_items = (array.count - 1)

   (number_of_items + 1).times do
        shuffled_array.push ""
   end
    
    array.each {|item|
    
    random_number = rand(number_of_items)
    
    while shuffled_array[random_number] != ""
    random_number = rand(number_of_items)
    end
    
    shuffled_array[random_number] = item
        
    }

    puts shuffled_array.join(", ")
    
end

array = ["beeeast","c","feeaaad","c","d","e","e","e","e","e","e","e"]

truffleshuffle array

=end