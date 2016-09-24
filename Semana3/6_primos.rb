# Números primos
#
# Un número primo es aquel que sólo es divisible entre 1 y sí mismo.
# 1, 2, 3, 5, 7, 11, 13, etc..
#
# Escribe un programa que le pida un número al usuario y le diga si
# es primo o no.

puts "Dame un número?"
numero = gets.to_i
numero_es_primo = true

for divisor in 2..(numero - 1) do
  es_divisible = (numero % divisor == 0)
  if es_divisible
    puts "No es primo, porque es divisible entre #{divisor}!"
    numero_es_primo = false
  end
end

if (numero_es_primo == true)
  puts "Sí es primo!"
end
