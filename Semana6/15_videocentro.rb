# Videocentro
#
# Con la base de datos inicial de un videocentro, escribe funciones que te permitan hacer lo
# siguiente:
#
# - Agregar/eliminar clientes
# - Agregar/eliminar peliculas
# - Buscar peliculas por id, año y género
# - Buscar clientes por id
# - Rentar y regresar películas verificando que estén en existencia
#
# Al terminar, haz una interfaz de texto que permita al usuario hacer todas estas funciones por
# medio de la terminal.

require 'yaml'

def lee_videocentro()
  return YAML.load_file('15_videocentro.yaml')
end

def guarda_videocentro(videocentro)
  File.open('15_videocentro.yaml', 'w') { |v| v.puts videocentro.to_yaml }
end

# Busqueda

def pelicula_por_id(id_pelicula)
  videocentro = lee_videocentro()
  videocentro[:peliculas].each do |pelicula|
    if pelicula[:id] == id_pelicula
      return pelicula
    end
  end
  return nil
end

def peliculas_por_anio(anio)
  videocentro = lee_videocentro()
  peliculas_mismo_anio = []
  videocentro[:peliculas].each do |pelicula|
    if pelicula[:anio] == anio
      peliculas_mismo_anio.push(pelicula)
    end
  end
  return peliculas_mismo_anio
end

def peliculas_por_genero(genero)
  videocentro = lee_videocentro()
  peliculas_mismo_genero = []
  videocentro[:peliculas].each do |pelicula|
    if pelicula[:genero].downcase == genero.downcase
      peliculas_mismo_genero.push(pelicula)
    end
  end
  return peliculas_mismo_genero
end

def cliente_por_id(id_cliente)
  
end

# Alta

def agregar_pelicula(titulo, anio, genero, cantidad)
end

def agregar_cliente(nombre)
end

def rentar_pelicula(id_pelicula, id_cliente)
end

# Baja

def eliminar_pelicula(id_pelicula)
end

def eliminar_cliente(id_cliente)
end

def regresar_pelicula(id_pelicula, id_cliente)
end
