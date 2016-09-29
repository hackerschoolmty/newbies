# Copia todos los elementos de un arreglo a un segundo arreglo en orden reverso.

# names = ["JP", "Edo", "Kuri", "Rafa", "Annie"]
# #=> names_reversed = ["Annie", "Rafa", "Kuri", "Edo", "JP"]

# Escribe tu código aquí

names = ["JP", "Edo", "Kuri", "Rafa", "Annie"]

puts "Arreglo original: "
puts names.join(", ") # .join une los elementos de array en un string

# Declaramos el nuevo arreglo que tendrá el reverso del anterior
names_reversed = []

# Recorrer el arreglo names iniciando al final del arreglo
cont = names.length - 1

while cont >=0 do
  names_reversed.push(names[cont])
  cont -= 1
end

puts "Arreglo en orden al revés: "
puts names_reversed.join(", ")
