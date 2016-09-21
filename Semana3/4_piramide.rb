# Pirámide
#
# Que te pida un numero entero positivo menor de 50 por teclado (valida que no se exceda) y dibuje
# un asterisco por cada número que te den en diferentes renglones.

# Pedir número de entrada
begin
  print "Dame un número = "
  numero = gets.chomp.to_i

  numero_correcto = (numero < 50)
  if !numero_correcto
    puts "El número es muy grande! Intenta de nuevo..."
  end
end while !numero_correcto

# Imprimir asteriscos
numero.times do |renglon|
  (renglon + 1).times do
    print "*"
  end
  puts
end
