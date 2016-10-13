# Llaves y valores
#
# Escribe una función que reciba un arreglo de llaves y otro de valores y regrese un hash tomando
# ambos en cuenta.
#
# Ejemplo:
#   llaves_valores(["artista", "género", "título", "longitud"],
#                  ["Interpol", "Alternativo", "Narc", "4:07"]) =>
#
#                  {
#                    "artista": "Interpol",
#                    "género": "Alternativo",
#                    "título": "Narc",
#                    "longitud": "4:07"
#                  }

def llaves_valores(llaves, valores)
  hash = {}
  i = 0
  while i < llaves.length do
    llave = llaves[i]
    valor = valores[i]
    hash[llave] = valor
    i += 1
  end
  return hash
end

puts llaves_valores(["equipo", "qb", "ciudad"], ["Buffalo", "Tyler Taylor", "Buffalo, NY", "hola"])
