# Cifras
#
# Contar el número de cifras de un entero n.
# Ejemplo:
#
# Dame un numero entero? 1547
# 1547 tiene 4 dígitos.

puts "Dame un número entero?"
numero = gets.to_i

contador = 0
while numero != 0
  numero /= 10
  contador += 1
end

puts "Tu número tiene #{contador} dígitos"
