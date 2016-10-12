# Máximo común divisor
#
# Escribe una función que regrese el máximo común divisor de dos números enteros.
#
# Ejemplo:
#  mcd(5, 6) => 1
#  mcd(20, 16) => 4
#  mcd(48, 60) => 12

def max_comun_divisor(numero_1, numero_2)
  numero_menor = numero_1
  if numero_2 < numero_1
    numero_menor = numero_2
  end
  i = numero_menor
  while i > 0
    if (numero_1 % i == 0) and (numero_2 % i == 0)
      return i
    end
    i -= 1
  end
  return 1
end

puts max_comun_divisor(20, 16)
puts max_comun_divisor(110, 80)
