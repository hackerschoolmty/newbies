# Multiplica todos
#
# Escribe una función que multiplique todos los números de un arreglo por un segundo argumento.
#
# Ejemplo:
#   multiplica([10, 20, 30], 5) => [50, 100, 150]
#
# Trata de hacer una función recursiva.

def multiplica(arreglo, numero)
  resultado = []
  for i in arreglo do
    resultado.push(i * numero)
  end
  return resultado
end

def multiplica_r(arreglo, numero)
  if arreglo.length == 0
    return []
  end

  numero_nuevo = arreglo[0] * numero
  arreglo_nuevo = []
  arreglo_nuevo.push(numero_nuevo)

  arreglo_sobrante = arreglo[1..arreglo.length]

  return arreglo_nuevo + multiplica_r(arreglo_sobrante, numero)
end

puts multiplica([10, 20, 30], 5)
puts multiplica_r([10, 20, 30], 5)
