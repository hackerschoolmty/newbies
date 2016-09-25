# 5- Carta mayor
#
# Escribe un programa que pida 4 cartas (2-10, J, Q, K, A) y al final diga qué carta es la mayor.
#
# Dame la carta 1? A
# Dame la carta 2? 7
# Dame la carta 3? K
# Dame la carta 4? 10
# La carta mayor es = A

valores = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
cartas = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]

valor_grande = 0
posicion_de_valor_grande = 0

4.times do |num_carta|
  indice_carta = nil
  begin
    puts "Dame la carta #{num_carta + 1}?"
    carta = gets.chomp
    indice_carta = cartas.find_index(carta)
    if indice_carta == nil
      puts "La carta es inválida, intenta de nuevo..."
    end
  end while indice_carta == nil

  if valor_grande < valores[indice_carta]
    valor_grande = valores[indice_carta]
    posicion_de_valor_grande = indice_carta
  end
end

puts "La carta más grande es = #{cartas[posicion_de_valor_grande]}"
