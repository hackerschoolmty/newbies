# Introducción a funciones
#
# En este archivo definiremos varias funciones para entender cómo funcionan.

# Funciones sin argumentos
def saludo()
  puts "Hola"
  puts "Como estas?"
end

saludo()
# suma_sencilla() - no funciona aquí

def suma_sencilla()
  puts 3 + 5
end

suma_sencilla()

# Funciones con argumentos

puts

def suma_compleja(a, b)
  puts a + b
end

suma_compleja(1, 2)
suma_compleja(100, 45)
suma_compleja(30, 2.5)
suma_compleja("hola", "mundo")

# Manejo de variables dentro de funciones

puts

a = 6  # no afecta porque 'a' se vuelve a declarar en la función.
def multiplica(a, b)
  puts a * b
end

multiplica(3, 5)

# Cómo llamar funciones? Diferencia entre paréntesis y corchetes.

multiplica(5, 5)

# Llamado de funciones con argumentos aritméticos

multiplica(4 * 5, 2 + 2) # multiplica(20, 4)

# Funciones con valores de retorno
puts

def multiplica_2(a, b)
  return a * b
end

x = multiplica_2(3, 4)
puts x

puts multiplica_2(6, 6)

puts

def suma_tres_numeros(a, b, c)
  return a + b + c
end

resultado = suma_tres_numeros(1, 2, 3)
puts "resultado = #{resultado}"
puts "resultado = #{suma_tres_numeros(5, 5, 4)}"

puts suma_tres_numeros(3, 4, suma_tres_numeros(1, 2, 3))

# Funciones con argumentos default
puts

def saludo_maestro(nombre_maestro = "Profesor")
  puts "Hola, #{nombre_maestro}!"
end

saludo_maestro()
saludo_maestro("Edgar")
saludo_maestro("Chema")
