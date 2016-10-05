# Algunas ligas de Futbol

leagues = {
  'La Liga' => 'ESP',
  'Calccio' => 'ITA',
  'Major League Soccer' => 'USA',
  'Liga MX' => 'MEX',
  'Premier League' => 'ENG'
}

# Definimos algunos equipos en base a su país

teams = {
  'ITA' => 'Juventus',
  'ESP' => 'Barcelona',
  'MEX' => 'Chivas'
}

countries = {
  'ITA' => 'Italia',
  'ESP' => 'España',
  'MEX' => 'México',
  'ENG' => 'Inglaterra',
  'USA' => 'Estados Unidos de América'
}

# Agregamos más equipos a sus países

teams['USA'] = 'LA Galaxy'
teams['ENG'] = 'Manchester United'

# Imprimimos equipos
puts '-' * 20
puts "#{teams['ITA']} es del país Italia (ITA)"
puts "#{teams['MEX']} es del país México (MEX)"
puts "#{teams['ENG']} es del país Inglaterra (ENG)"

# Mostramos a dos ligas de fútbol y sus países
puts '-' * 20
puts "La Liga está en #{countries[leagues['La Liga']]}"
puts "Calccio está en #{countries[leagues['Calccio']]}"

# Mostramos a cada liga y su país
puts '-' * 20
leagues.each do |league, country|
  puts "#{league} está en el país #{country}"
end

# Mostramos a cada país y su equipo
puts '-' * 20
teams.each do |country, team|
  puts "#{country} tiene al equipo #{team}"
end

# Mostramos a cada equipo de cada liga en base a su pais
puts '-' * 20
leagues.each do |league, country|
  team = teams[country]
  puts "#{league} está en #{countries[country]} tiene al equipo #{teams[country]}"
end



# Modificar el hash `teams` agregando nombre, ciudad, nombre
# de su estadio por cada equipo y modificar el código que
# imprima a cada equipo con sus atributos por cada país

equipos_por_liga = {
  ITA: {
    juventus: {
      nombre: 'Juventus',
      ciudad: 'Turín',
      estadio: 'Juventus Stadium'
    },
    milan_ac: {
      nombre: 'Milán AC',
      ciudad: 'Milán',
      estadio: 'Giuzeppe Meazza'
    },
    lazio: {
      nombre: 'Lazio',
      ciudad: 'Roma',
      estadio: 'Stadio Olimpico'
    }
  },
  ESP: {
    barcelona_fc: {
      nombre: 'Barcelona Fútbol Club',
      ciudad: 'Barcelona',
      estadio: 'Camp Nou'
    },
    real_madrid: {
      nombre: 'Real Madrid CF',
      ciudad: 'Madrid',
      estadio: 'Santiago Bernabeu'
    },
    atleti: {
      nombre: 'Atlético de Madrid',
      ciudad: 'Madrid',
      estadio: 'Vicente Calderón'
    }
  }
}

equipos_por_liga.each do |pais, equipos|
  puts "-" * 20
  puts "Equipos de #{pais}"
  equipos.each do |equipo, atributos|
    puts "Nombre del equipo: #{atributos[:nombre]}"
    puts "Ciudad: #{atributos[:ciudad]}"
    puts "Nombre del estadio: #{atributos[:estadio]}"
  end
end
