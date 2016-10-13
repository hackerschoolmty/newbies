# Girar arreglo
#
# Escribe una función que tome un arreglo y el número de posiciones a recorrer y regrese un nuevo
# arreglo recorrido por esas posiciones.
#
# Ejemplo:
#   girar([1, 2, 3, 4, 5], 2) => [4, 5, 1, 2, 3]
#   girar(["hola", "como", "estas", "bien"], 1) => ["bien", "hola", "como", "estas"]

def girar(arreglo, numero)
  arr_1 = arreglo[0..(arreglo.length - numero - 1)]
  arr_2 = arreglo[arr_1.length..(arreglo.length - 1)]
  return arr_2 + arr_1
end

puts girar([1, 2, 3, 4, 5, 6, 7, 8, 9], 3).join(", ")
