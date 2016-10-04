# Print an array that is "left_shifted" by one -- so [6,2,5,3] prints [2,5,3,6]. 

# You may modify and return the given array, or return a new array.
# [6, 2, 5, 3] → [2, 5, 3, 6] 
# [1, 2] → [2, 1] 
# [1] → [1]

array = [6, 2, 5, 3]
puts array.join(' ')

# Rubyist way
# number = array[0]
# array.delete_at(0)
# array.push(number)

# Hardcore Developer Way
number = array[0]
index = 1
while index < (array.length)
	array[index - 1] = array[index]
	index = index + 1
end
array[index - 1] = number
# array[array.length - 1] = number

puts array.join(' ')
