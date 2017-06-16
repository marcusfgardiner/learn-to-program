def sort some_array 
recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
    
smallest = unsorted_array[0]

  unsorted_array.each {|word|
    if smallest >= word
      smallest = word
    end
  }
  sorted_array.push smallest
  unsorted_array.delete_at(unsorted_array.find_index(smallest))
  smallest = unsorted_array[0]
  
    if unsorted_array != []
        recursive_sort unsorted_array, sorted_array
    else
        puts sorted_array.join(", ")
    end

end

array_to_sort = ["b","c","f","c","d","e"]

sort array_to_sort