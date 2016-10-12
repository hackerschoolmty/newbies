# Combina arreglos
#
# Escribe una función que reciba dos arreglos y regrese un nuevo arreglo con los elementos
# intercalados.
#
# Ejemplo:
#   combina(["a", "b", "c"], [1, 2, 3]) => ["a", 1, "b", 2, "c", 3]

def combina(arreglo_1, arreglo_2)
  arreglo_3 = []
  i = 0
  while i < arreglo_1.length
    arreglo_3.push(arreglo_1[i])
    arreglo_3.push(arreglo_2[i])
    i += 1
  end
  return arreglo_3
end

puts combina([1, 2, 3], ["a", "b", "c"])
puts combina(["hola", "como", "estas?"], ["bien", "y", "tu?"])
