# Mejor jugador
#
# Escribe una función que tome un hash de un equipo de futbol como argumento y regrese los datos
# del jugador que más goles ha metido en la liga.
#
# Ejemplo:
#   mejor_jugador(cf_monterrey) => "(#8) Dorlan Pabon: 7 goles"

cf_monterrey = {
  nombre: "Club de Futbol Monterrey",
  sede: "Monterrey/NL/MX",
  jugadores: [
    {
      nombre: "José María Basanta",
      numero: 15,
      posicion: "Defensa",
      goles: 2,
    },
    {
      nombre: "Dorlan Pabon",
      numero: 8,
      posicion: "Delantero",
      goles: 7,
    },
    {
      nombre: "Aldo De Nigris",
      numero: 9,
      posicion: "Delantero",
      goles: 4,
    },
    {
      nombre: "Funes Mori",
      numero: 7,
      posicion: "Delantero",
      goles: 10,
    },
  ]
}

def mejor_jugador(equipo)
  lider_goleador = nil
  jugadores = equipo[:jugadores]
  jugadores.each do |jugador|
    if lider_goleador == nil or jugador[:goles] > lider_goleador[:goles]
      lider_goleador = jugador
    end
  end
  return lider_goleador
end

goleador = mejor_jugador(cf_monterrey)
puts "(##{goleador[:numero]}) #{goleador[:nombre]}: #{goleador[:goles]} goles"
