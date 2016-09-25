# 10- Fechas
#
# Verificar que una fecha sea introducida correctamente y en caso de no serlo, que te permita
# regresar y corregirla. (DD/MM/AAAA)
# fecha = "13/25/2016"
# fecha.split("/") => ["13", "25", "2016"]
#
# Dame una fecha? 13/25/2016
# Tu fecha es inválida!
# Dame una fecha? 13/05/2016
# Tu fecha es válida.

puts "Dame una fecha?"
fecha = gets.chomp # "13/25/2016"
fecha_componentes = fecha.split("/") # ["13", "25", "2016"]

posicion_componente = 0
for componente in fecha_componentes do
  # Dia
  if posicion_componente == 0
    dia = componente.to_i
    if dia < 1 or dia > 31
      puts "Día inválido!"
      break
    end
  end

  # Mes
  if posicion_componente == 1
    mes = componente.to_i
    if mes < 1 or mes > 12
      puts "Mes inválido!"
      break
    end
  end

  # Año
  if posicion_componente == 2
    año = componente.to_i
    if año < 1 or año > 9999
      puts "Año inválido!"
      break
    end
  end

  posicion_componente += 1
end
