# 9- Carrera
#
# En una competencia de carrera de obstáculos se premiará a los participantes que realicen un tiempo
# no mayor a 15 minutos y que no hayan derribado ninguna barrera.
# Se te pide que realices un programa en donde se registre a cada participante y al final se generen
# los resultados:
#
# - Total de participantes en la competencia:
# - Total de participantes que recibirán premio
# - El participante con menor tiempo en su recorrido

puts "Cuántos participantes?"
total_participantes = gets.to_i

total_premios = 0
participante_mas_rapido = 0
tiempo_mas_rapido = 99999999

for num_participante in 1..total_participantes do
  puts "Participante no.#{num_participante}:"
  puts "Cuánto se tardó?"
  tiempo = gets.to_i
  puts "Cuántas barreras derribó?"
  barreras_derribadas = gets.to_i

  if tiempo < 15 and barreras_derribadas == 0
    total_premios += 1
  end

  if tiempo < tiempo_mas_rapido
    tiempo_mas_rapido = tiempo
    participante_mas_rapido = num_participante
  end
end

puts
puts "Total de participantes = #{total_participantes}"
puts "Total de premios = #{total_premios}"
puts "Participante más rápido = #{participante_mas_rapido}"
