# Strings al reves
#
# Escribe una función que regrese una string al revés.
#
# Ejemplo:
#   reverso("hola") => "aloh"
#   reverso("buenos dias") => "said soneub"

def reverso(string)
  i = string.length - 1
  resultado = ""
  while i >= 0
    resultado += string[i]
    i -= 1
  end
  return resultado
end

# puts reverso("hola mundo")
# puts reverso("buenos dias")
# puts reverso("anitalavalatina")
