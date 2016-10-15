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

def peliculas_rentadas()
  videocentro = lee_videocentro()
  rentadas = []
  videocentro[:peliculas].each do |pelicula|
    if pelicula[:rentada] == true
      rentadas.push(pelicula)
    end
  end
  return rentadas
end

def cliente_por_id(id_cliente)
  videocentro = lee_videocentro()
  videocentro[:clientes].each do |cliente|
    if cliente[:id] == id_cliente
      return cliente
    end
  end
  return nil
end

# Alta

def agregar_pelicula(titulo, anio, genero)
  videocentro = lee_videocentro()

  id_nuevo = 1
  ultima_pelicula = videocentro[:peliculas].last
  if ultima_pelicula != nil
    id_nuevo = ultima_pelicula[:id] + 1
  end

  pelicula = {
    id: id_nuevo,
    titulo: titulo,
    anio: anio,
    genero: genero,
    rentada: false
  }
  videocentro[:peliculas].push(pelicula)
  guarda_videocentro(videocentro)
end

def agregar_cliente(nombre)
  videocentro = lee_videocentro()

  # Calcular id del nuevo cliente.
  id_nuevo = 1
  ultimo_cliente = videocentro[:clientes].last
  if ultimo_cliente != nil
    id_nuevo = ultimo_cliente[:id] + 1
  end

  # Creo un cliente nuevo y lo agrego al arreglo de clientes.
  cliente = {
    id: id_nuevo,
    nombre: nombre,
    rentas: [],
  }
  videocentro[:clientes].push(cliente)

  guarda_videocentro(videocentro)
end

# Cambios

def modificar_pelicula(pelicula)
  videocentro = lee_videocentro()
  videocentro[:peliculas].each do |pelicula_existente|
    if pelicula_existente[:id] == pelicula[:id]
      pelicula_existente[:titulo] = pelicula[:titulo]
      pelicula_existente[:genero] = pelicula[:genero]
      pelicula_existente[:anio] = pelicula[:anio]
      pelicula_existente[:rentada] = pelicula[:rentada]
      guarda_videocentro(videocentro)
      return
    end
  end
end

def modificar_cliente(cliente)
  videocentro = lee_videocentro()
  videocentro[:clientes].each do |cliente_existente|
    if cliente_existente[:id] == cliente[:id]
      cliente_existente[:nombre] = cliente[:nombre]
      cliente_existente[:rentas] = cliente[:rentas]
      guarda_videocentro(videocentro)
      return
    end
  end
end

# Baja

def eliminar_pelicula(id_pelicula)
end

def eliminar_cliente(id_cliente)
end

# Rentas

def rentar_pelicula(id_pelicula, id_cliente)
  pelicula = pelicula_por_id(id_pelicula)
  cliente = cliente_por_id(id_cliente)

  if pelicula[:rentada] == true
    return false
  end
  pelicula[:rentada] = true
  cliente[:rentas].push(id_pelicula)

  modificar_pelicula(pelicula)
  modificar_cliente(cliente)
end

def regresar_pelicula(id_pelicula, id_cliente)
  pelicula = pelicula_por_id(id_pelicula)
  cliente = cliente_por_id(id_cliente)

  if pelicula[:rentada] == false
    return false
  end
  pelicula[:rentada] = false
  cliente[:rentas].delete(id_pelicula)

  modificar_pelicula(pelicula)
  modificar_cliente(cliente)
end
