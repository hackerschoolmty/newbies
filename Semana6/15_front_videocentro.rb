require_relative '15_videocentro.rb'

def menu_buscar_peliculas()
  begin
    puts "Buscar películas:"
    puts "1) Buscar por ID"
    puts "2) Buscar por año"
    puts "3) Buscar por género"
    puts "0) Regresar"
    puts
    opcion = gets.to_i
    if opcion == 1
      print "ID de película: "
      id_pelicula = gets.to_i
      puts pelicula_por_id(id_pelicula)
      puts
    elsif opcion == 2
      print "Año: "
      anio = gets.to_i
      puts peliculas_por_anio(anio)
      puts
    elsif opcion == 3
      print "Género: "
      genero = gets.chomp
      puts peliculas_por_genero(genero)
      puts
    elsif opcion == 0
      break
    else
      puts "Opción inválida!"
    end
  end while opcion != 0
end

def menu_peliculas()
  begin
    puts "Películas:"
    puts "1) Buscar película"
    puts "2) Agregar película"
    puts "0) Regresar"
    puts
    opcion = gets.to_i
    if opcion == 1
      menu_buscar_peliculas()
    elsif opcion == 2
      print "Título: "
      titulo = gets.chomp
      print "Año: "
      anio = gets.to_i
      print "Género: "
      genero = gets.chomp
      agregar_pelicula(titulo, anio, genero)
      puts
    elsif opcion == 0
      break
    else
      puts "Opción inválida!"
    end
  end while opcion != 0
end

def menu_clientes()
  begin
    puts "Clientes:"
    puts "1) Buscar cliente"
    puts "2) Agregar cliente"
    puts "0) Regresar"
    puts
    opcion = gets.to_i
    if opcion == 1
      print "ID: "
      id_cliente = gets.to_i
      puts cliente_por_id(id_cliente)
      puts
    elsif opcion == 2
      print "Nombre: "
      nombre = gets.chomp
      agregar_cliente(nombre)
      puts
    elsif opcion == 0
      break
    else
      puts "Opción inválida!"
    end
  end while opcion != 0
end

def menu_rentas()
  begin
    puts "Rentas:"
    puts "1) Rentar película"
    puts "2) Devolver película"
    puts "3) Listar películas rentadas"
    puts "0) Regresar"
    puts
    opcion = gets.to_i
    if opcion == 1
      print "ID película a rentar: "
      id_pelicula = gets.to_i
      print "ID cliente que renta: "
      id_cliente = gets.to_i
      renta_exitosa = rentar_pelicula(id_pelicula, id_cliente)
      if renta_exitosa == false
        puts "Esa película ya está rentada!"
      else
        puts "Renta exitosa!"
      end
      puts
    elsif opcion == 2
      print "ID película a devolver: "
      id_pelicula = gets.to_i
      print "ID cliente que devuelve: "
      id_cliente = gets.to_i
      devolucion_exitosa = regresar_pelicula(id_pelicula, id_cliente)
      if devolucion_exitosa == false
        puts "Esa película no estaba rentada!"
      else
        puts "Devolución exitosa!"
      end
      puts
    elsif opcion == 3
      puts peliculas_rentadas()
      puts
    elsif opcion == 0
      break
    else
      puts "Opción inválida!"
    end
  end while opcion != 0
end

begin
  puts
  puts "---"
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
    menu_clientes()
  elsif opcion_1 == 3
    menu_rentas()
  elsif opcion_1 == 0
    puts "Hasta luego..."
  else
    puts "Opción inválida, por favor intenta de nuevo."
  end
end while opcion_1 != 0
