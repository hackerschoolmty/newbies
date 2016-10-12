# Busqueda en arreglo
#
# Escribe una función que regrese true o false si un numero se encuentra en un arreglo.
#
# Ejemplo:
#   busqueda(3, [1, 2, 3]) => true
#   busqueda(5, [2, 4, 6, 8]) => false

def busqueda(numero_a_buscar, arreglo)
  arreglo.each do |numero|
    if numero == numero_a_buscar
      return true
    end
  end
  return false
end

puts busqueda(5, [2, 4, 6, 8])
puts busqueda(3, [1, 2, 3])
puts busqueda("b", ["a", "b", "c"])
