# Sumatorias
#
# Escribe una función que regrese la suma de todos los elementos de un arreglo de enteros.
# Llama la función con varios arreglos distintos.
#
# Ejemplo:
#   sumatoria([1, 2, 3]) = 6
#   sumatoria([2, 2]) = 4

def sumatoria(arreglo)
  suma = 0
  arreglo.each do |valor|
    suma += valor
  end
  return suma
end

puts sumatoria([1, 2, 3])
puts sumatoria([2, 2])
puts sumatoria([10, 10, 30])
puts sumatoria([54, 32, 1, 5, 2, 6, 53, 33])
