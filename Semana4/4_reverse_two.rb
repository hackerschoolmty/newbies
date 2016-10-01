# Copia todos los elementos de un arreglo al mismo arreglo en orden reverso.

# names = ["JP", "Edo", "Kuri", "Rafa", "Annie"]
# #=> names = ["Annie", "Rafa", "Kuri", "Edo", "JP"]

# Escribe tu código aquí

#################################

# names = Array.new(5)
names = 	["JP", "Edo", "Kuri", "Rafa", "Annie"]
#=> names = ["Annie", "Rafa", "Kuri", "Edo", "JP"]

iterations = names.length / 2
last_index = names.length - 1

iterations.times do |index|
	nombre_temporal = names[index]
	names[index] = names[last_index]
	names[last_index] = nombre_temporal
	last_index = last_index - 1
end

puts names