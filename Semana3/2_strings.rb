# Diferentes formas de imprimir y pedir strings en la terminal
# -----

# puts
puts "Imprime"
puts "linea"
puts "por"
puts "linea"
puts "con un salto de línea al final"

# print
print "Imprime "
print "todo-"
print "pegado "
print "sin un salto de línea al final\n"

# Multilínea
puts """
   Hola, este es un
\t\tpárrafo
    que tiene espacios
 donde yo quiero.
"""

puts """

                                |
                               _|_
                              /(_)\
                      -------:==^==:-------
                           [[|  o  |]]
  -----------------__________\\_____/__________-----------------
                          _  /     \\  _
                         T T/_______\\T T
                         | |         | |
                         """         """  -RW
"""

# gets
puts "Hola, qué edad tienes?"
edad = gets
puts "Ah ok, felicidades por tus #{edad} años!"

# gets.chomp
puts "Hola, qué edad tienes otra vez?"
edad = gets.chomp
puts "Ah ok, felicidades por tus #{edad} años!"

print "Y cómo te llamas? "
nombre = gets.chomp
puts "Mucho gusto, #{nombre}!"

# to_i
edad = edad.to_i
puts "Tu edad dividida entre 2 es #{edad / 2}"

# to_f
print "Cuánto mides de altura? "
altura = gets.chomp.to_f
puts "El doble de tu altura sería #{altura * 2} metros!"
