# Convertidor de números romanos
#
# Escribe un programa que le pida un número al usuario y le regrese
# el mismo número en número romano.
#
# Ejemplo:
# Dame un número? 1997
# MCMXCVII
#
# Dame un número? 2000
# MM

romanos = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
romanos_letras = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]

puts "Dame un número: "
numero = gets.to_i

en_cual_letra_voy = 0
for valor_romano in romanos do
  cuantas_veces = numero / valor_romano
  if cuantas_veces > 0
    cuantas_veces.times do
      print romanos_letras[en_cual_letra_voy]
    end
    numero = numero - (valor_romano * cuantas_veces)
  end
  en_cual_letra_voy += 1
end

puts
