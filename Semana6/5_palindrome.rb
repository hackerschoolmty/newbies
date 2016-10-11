# Palíndrome
#
# Escribe una función que determine si un string dado como argumento es palíndrome o no (si se lee
# igual de izq a der que de der a izq).
#
# Ejemplo:
#   palindrome("hola") => false
#   palindrome("anitalavalatina") => true

require_relative "3_strings_al_reves.rb"

def es_palindrome(palabra)
  return palabra == reverso(palabra)
end

puts es_palindrome("hola")
puts es_palindrome("anitalavalatina")
