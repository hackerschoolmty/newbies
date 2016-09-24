# Fibonacci
#
# La serie de números Fibonacci es una en la que cada número es igual
# a la suma de los dos números anteriores:
# 1, 1, 2, 3, 5, 8, 13, 21, 34
#
# Escribe un programa que le pida un número menor a 15 al usuario y
# esa sea la cantidad de números de la serie Fibonacci que vas a
# imprimir.
#
# Cuántos números de la serie Fibonacci quieres? 6
# Los primeros 6 números Fibonacci son = 1, 1, 2, 3, 5, 8

print "Cuántos números de la serie Fibonacci quieres? "
numero = gets.chomp.to_i

fib_menos_1 = 1
fib_menos_2 = 1
for i in 1..numero do
  if i == 1 or i == 2
    puts 1
  else
    nuevo_fib = fib_menos_1 + fib_menos_2
    puts nuevo_fib

    fib_menos_2 = fib_menos_1
    fib_menos_1 = nuevo_fib
  end
end
