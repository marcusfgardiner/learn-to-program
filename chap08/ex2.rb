array = ["Table of contents","Chapter 1: Getting Started","Chapter 2: Numbers","Chapter 3: Letters","page 1", "page 9","page 13"]

left = 30
center = 50
right = 20


puts array[0].center(center)
puts 
puts array[1].ljust(left) + array[4].rjust(right)
puts array[2].ljust(left) + array[5].rjust(right)
puts array[3].ljust(left) + array[6].rjust(right)
