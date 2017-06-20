#shuffle method into array class

class Array
    def shuffle
    
        shuffled_array = []
            
        array_copy = self
        
        while array_copy.length > 0
        
        random_index = rand(array_copy.length)
        
        current_index = 0
        new_arr = []
        
        array_copy.each { |item|
            if current_index == random_index
                shuffled_array.push item
            else
                new_arr.push item
            end
            
            current_index = current_index + 1
        }
        
        array_copy = new_arr
        end
        
    shuffled_array.join(", ")
        
    end
end

array = ["beeeast","c","feeaaad","c","d","e","e","e","e","e","e","e"]

puts array.shuffle

#---------------------------------------------------------------------------------------------------------------------------------------

#english number method into integer class

class Integer
    def english_number
        if self < 0 # no negative numbers
            return 'Please enter a number that isn\'t negative.'
        end
        if self == 0
            return 'zero'
        end
        
        num_string = '' # this is the string we will return at the end
        
        ones_place = ['one', 'two', 'three','four', 'five', 'six','seven', 'eight', 'nine']
        tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
        teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
        
        #left is how much of the number still to write out
        # write is the part we are writing out right now
       
               #------------------------------- BILLIONS
            
        left = self
        write = left/1000000000 # how many billions left
        left = left - write*1000000000 # subract off those billions
        
        if write > 0
            #recursion time
            billions = write.english_number  
            #therefore in the below, how many 'hundreds' is found using recursion and inserted here
            # (in the recursion it inserts just the number of hundreds this time, rather than having to insert the entie number)
            num_string = num_string + billions + ' billion'
            
            if left > 0 
                # so we don't write two hundredfifty-one, i.e. if we have left something below one hundred, adds a space
                num_string = num_string + ' '
            end
        end
    
    
    
        #----------------------------------
        
            #------------------------------- MILLIONS
    
        write = left/1000000 # how many millions left
        left = left - write*1000000 # subract off those millions
        
        if write > 0
            #recursion time
            millions = write.english_number  
            #therefore in the below, how many 'hundreds' is found using recursion and inserted here
            # (in the recursion it inserts just the number of hundreds this time, rather than having to insert the entie number)
            num_string = num_string + millions + ' million'
            
            if left > 0 
                # so we don't write two hundredfifty-one, i.e. if we have left something below one hundred, adds a space
                num_string = num_string + ' '
            end
        end
    
    
    
        #----------------------------------
        
        #------------------------------- THOUSANDS
        
    
        write = left/1000 # how many thousands left
        left = left - write*1000 # subract off those thousands
        
        if write > 0
            #recursion time
            thousands = write.english_number 
            #therefore in the below, how many 'hundreds' is found using recursion and inserted here
            # (in the recursion it inserts just the number of hundreds this time, rather than having to insert the entie number)
            num_string = num_string + thousands + ' thousand'
            
            if left > 0 
                # so we don't write two hundredfifty-one, i.e. if we have left something below one hundred, adds a space
                num_string = num_string + ' '
            end
        end
        
        #----------------------------------
    
        write = left/100 # how many hundies left
        left = left - write*100 # subract off those hundreds
        
        if write > 0
            #recursion time
            hundreds = write.english_number  
            #therefore in the below, how many 'hundreds' is found using recursion and inserted here
            # (in the recursion it inserts just the number of hundreds this time, rather than having to insert the entie number)
            num_string = num_string + hundreds + ' hundred'
            
            if left > 0 
                # so we don't write two hundredfifty-one, i.e. if we have left something below one hundred, adds a space
                num_string = num_string + ' '
            end
        end
        
        write = left/10 # How many tens left?
        left = left - write*10 #Subtract off the tens
        
        if write > 0
            if ((write ==1) and (left > 0))
                #this is the exception for the teenagers!
            num_string = num_string + teenagers[left-1]
            #-1 because need to refer to the correct index of the array, which starts at 0 rather than 1!
            left = 0
            # left = 0 as for the teenagers, this covers the final digit too!
            else 
            num_string = num_string + tens_place[write-1]
             #-1 because need to refer to the correct index of the array, which starts at 0 rather than 1!
            end
        
            if left > 0
                # need a space if we still have some left for the final digit
                num_string = num_string + "-"
            end
        end 
        
        write = left #how many final digits to write out
        left = 0 # remove the rest of the digits!
        
        if write > 0
            num_string = num_string + ones_place[write-1]
        #-1 because need to refer to the correct index of the array, which starts at 0 rather than 1!
        end
        
        num_string
        
    end
end
    
    puts 1232555555.english_number 