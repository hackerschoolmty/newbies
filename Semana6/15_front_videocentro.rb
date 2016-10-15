require_relative '15_videocentro.rb'

def menu_peliculas()
  begin
    puts "Elige la opción que desees:"
    puts "1) Buscar película"
    puts "2) Agregar película"
    puts "0) Regresar"
    opcion = gets.to_i
    if opcion == 1
    elsif opcion == 2
    elsif opcion == 0
    else
      puts "Opción inválida!"
    end
  end while opcion > 2
end

begin
  puts "Bienvenido a Videocentro"
  puts "---"
  puts
  puts "Elige la opción que desees:"
  puts "1) Películas"
  puts "2) Clientes"
  puts "3) Rentas"
  puts "0) Salir"
  puts
  opcion_1 = gets.to_i
  if opcion_1 == 1
    menu_peliculas()
  elsif opcion_1 == 2

  elsif opcion_1 == 3

  elsif opcion_1 == 0
    puts "Hasta luego..."
  else
    puts "Opción inválida, por favor intenta de nuevo."
  end
end while opcion_1 > 3
