=begin

array = []

user_input = "Hello"

while user_input != ""

user_input = gets.chomp

array.push [user_input]

end

array.pop

=end

=begin
def sort some_array 
recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array


unsorted_array = ["a","b","c","d","e"]

=end

def non_recursive_sort unsorted_array

sorted_array = []

smallest = unsorted_array[0]

  while unsorted_array != []
  
  unsorted_array.each {|word|
    if smallest >= word
      smallest = word
    end
  }
  sorted_array.push smallest
  unsorted_array.delete_at(unsorted_array.find_index(smallest))
  smallest = unsorted_array[0]
  end
   puts sorted_array.join(", ")
end

array_to_sort = ["b","c","c","d","e"]

non_recursive_sort array_to_sort