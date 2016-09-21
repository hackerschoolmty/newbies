# Operaciones matemáticas
# ------

# Suma y resta
puts "La suma de 2 + 6 es = #{2 + 6}"

a = 20
b = 4
puts "Si le resto 4 a 20 me queda = #{a - b}"

puts "Operación random #{a - b + 20 - 3}"

# Multiplicación
puts "Si multiplico 20 * 50 me da = #{20 * 50}"

puts "#{(a + b) * 3 / 5}"

# División
puts "Si divido 40 entre 5 = #{40 / 5}"
puts "Si divido 31 entre 5 = #{31 / 5.00}"

# Modulo (residuo)
puts "Si divido 40 entre 6 me da #{40 / 6} y me sobran #{40 % 6}"

# Exponente
puts "2 elevado a la 5 es = #{2**5}"

# Operaciones de comparación
# ------

# Igual
puts "2 es igual a 6? #{2 == 6}"
puts "falso es igual a falso? #{false == false}"

# Diferente
puts "a es diferente de b? #{a != b}"

# Mayor que
puts "a es mayor que b? #{a > b}"

# Menor que
puts "a es menor que b? #{a < b}"

# Mayor o Igual
puts "a es mayor o igual a b? #{a >= b}"
puts "4 es mayor o igual a 4? #{4 >= 4}" # true

# Menor o Igual
puts "a es menor o igual a b? #{a <= b}"


# Operaciones lógicas
# ------

# AND
condicion1 = (a >= b) # true
condicion2 = (b < 10) # true
puts "Las dos condiciones son true? #{condicion1 and condicion2}"

# OR
puts "Al menos una condicion es true? #{condicion1 or condicion2}"

# NOT
puts "Si niego la condicion1 que me da? #{!condicion1}"
