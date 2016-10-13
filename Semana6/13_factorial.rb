# Factorial
#
# Escribe una función que calcule el factorial de un número.
# El factorial de un número es la multiplicación de todos los números entre 1 y ese número.
# 5! = 5 * 4 * 3 * 2 * 1
#
# Ejemplo:
#   factorial(5) => 120

def factorial(numero)
  f = 1
  numero.times do |valor|
    f = f * (valor + 1)
  end
  return f
end

def factorial_r(numero)
  return 1 if numero == 1
  return numero * factorial_r(numero - 1)
end

puts factorial_r(15)
