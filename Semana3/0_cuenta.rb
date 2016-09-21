# Escribe un programa para dividir la cuenta de un restaurante entre varios amigos.

puts "Cuánto fue el total de la cuenta?"
total = gets.to_f

puts "Cuántos cenaron?"
total_personas = gets.to_i

puts "Cuánto dejamos de propina?"
propina = gets.to_f

total_mas_propina = total + (total * propina / 100)
total_por_persona = total_mas_propina / total_personas
puts "El total por persona es $#{total_por_persona}"
