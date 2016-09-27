# Escribe un programa que guarde en un arreglo los nombres de todas las personas de la clase solicitando los nombres de teclado

# Declaramos el nombre del nuevo arreglo
clase = []

puts "¿Cuántas personas hay en la clase?"
cantidad_de_personas = gets.to_i

# Iniciamos un ciclo con la cantidad de personas en la clase
cantidad_de_personas.times do |contador|
  puts "Pásame el nombre #{contador+1}"

  # Empujamos el nuevo valor solicitado al usuario a nuestro arreglo clase
  clase.push(gets.chomp)
end

puts "Esta es la lista: "
# Imprimimos nuestro arreglo
puts clase
