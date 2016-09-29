# Genera un arreglo con N números random del 1 al 20 y regresa el mismo arreglo ordenado del menor al mayor

# Tu código aquí

# Solicitar al usuario cuantos números quisiera generar dentro del arreglo
puts "¿Cuántos elementos deseas en el arreglo?"
cantidad_de_elementos = gets.to_i

# Declaramos el arreglo de números
numeros = []

# Llenar el arreglo con N número random del 1 al 20
cantidad_de_elementos.times do
  numeros.push(rand(1..20))
end

# Imprimir el arreglo generado
puts numeros

# Ordenar el arreglo con sus elementos del menor al mayor

a = 0
cont = 0
while a <= numeros.length-2 do
  # cont = 0
  temp = 0
  b = a + 1
  while b <= numeros.length-1 do
    puts numeros.join("|")
    # Si el elemento que está en A es mayor que el elemento que está en B
    if numeros[a] > numeros[b]
      # Hacemos el swap
      temp = numeros[a]
      numeros[a] = numeros[b]
      numeros[b] = temp
    end
    b += 1
    cont += 1
  end
  a += 1
end

puts "Nuestro arreglo ordenado del menor al mayor"
puts numeros
puts "Pasadas totales: #{cont}"




