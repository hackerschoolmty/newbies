# 1. Imprime los elementos repetidos dentro del arreglo

#numbers = [13, 7, 6, 7, 20, -3, 13]
#=> 13
#=> 7

numbers = [2, 2, 2, 2]

index = 0
puts numbers.join(' ')

while index < numbers.length
	pivot = numbers[index]
	delta = index + 1

	while delta < numbers.length
		if (pivot == numbers[delta])
			puts "Numero repetido: #{pivot}"
			numbers.delete_at(delta)
			delta = delta - 1 
		end
		delta = delta + 1
	end

	index = index + 1
end

puts numbers.join(' ')