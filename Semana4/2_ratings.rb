# Escribe un programa que genere un nuevo arreglo con ratings de película del 1 al 5 de 20 personas,
# y regresa la calificación promedio en un objeto float.
# Si el promedio está arriba de 4.0 imprime que la película fue un éxito
# Hint! -> rand(n) te da un número random del 0 a n
#

# Declarar el nombre del arreglo
ratings = []

# Guardamos en una variable cuantas personas son
puts "¿Cuántas personas evaluaron?"
numero_de_personas = gets.to_i

# Abrimos un ciclo que nos ayude a guardar los ratings en nuestro arreglo
numero_de_personas.times do
  ratings.push(rand(0..5))
end

# Creas una variable sumatoria
sumatoria = 0

# Abrimos un nuevo ciclo y sumamos cada valor dentro del arreglo en sumatoria
puts "Los ratings generados son:"
ratings.each_with_index do |rating, index|
  puts "| #{index} | #{rating} |"
  sumatoria += rating # sumatoria = sumatoria + rating
end
puts "La sumatoria es: #{sumatoria}"

# Obtenemos el promedio de ratings dividiendo la sumatoria entre la cantidad de personas
promedio = sumatoria / numero_de_personas.to_f

puts "El promedio es: #{promedio}"

# Si promedio es >= 4 imprimo "La película fue un éxito!"
puts "La película fue un éxito" if promedio >= 4.0
