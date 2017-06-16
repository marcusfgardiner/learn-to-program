def sort some_array 
dictionary_sort some_array, []
end

def dictionary_sort unsorted_array, sorted_array
    
smallest = unsorted_array[0]

  unsorted_array.each {|word|
    if smallest.downcase >= word.downcase
      smallest = word
    end
  }
  sorted_array.push smallest
  unsorted_array.delete_at(unsorted_array.find_index(smallest))
  smallest = unsorted_array[0]
  
    if unsorted_array != []
        dictionary_sort unsorted_array, sorted_array
    else
        puts sorted_array.join(", ")
    end

end

array_to_sort = ['can','feel','singing.','like','A','can']

sort array_to_sort

