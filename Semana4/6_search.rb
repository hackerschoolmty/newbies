# Encuentra e imprime el número que desea buscarse en un arreglo.

numbers = [10, 25, 10, 38.5, 0, -2]
search_number = gets.chomp.to_i
index = 0
found = false

while index < numbers.length
	if numbers[index] == search_number and !found
		puts 'Existe!'
		found = true
	end
	index = index + 1
end

puts 'No existe!' if !found


# Encuentra e imprime el número mayor/menor del arreglo.
numbers = [10, 25, 10, 38.5, 0, -2, 19, 273, 46]
index = 0
mayor = numbers[0]
menor = numbers[0]

while index < numbers.length
	if mayor < numbers[index]
		mayor = numbers[index]
	end
	if menor > numbers[index]
		menor = numbers[index]
	end
	index = index + 1
end

puts "Mayor: #{mayor} | Menor: #{menor}"