# En este archivo vamos a refactorizar varios problemas que hemos hecho antes para transformarlos
# en funciones que podamos reutilizar fácilmente.


# Par o impar
# Escribe una función que le diga al usuario si un número es par.
# Ejemplo:
#   es_par(2) => true
#   es_par(3) => false
def par_o_impar(numero)
  if numero % 2 == 0
    puts "#{numero} es par!"
  else
    puts "#{numero} es impar!"
  end
end
# puts "Dame un numero?"
# x = gets.to_i
# par_o_impar(x)


# Números romanos
# Escribe una función que reciba un número entero y regrese una string de su representación en
# números romanos.

def numero_romano(numero_decimal)
  romanos = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  romanos_letras = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]

  resultado = ""
  en_cual_letra_voy = 0
  for valor_romano in romanos do
    cuantas_veces = numero_decimal / valor_romano
    if cuantas_veces > 0
      cuantas_veces.times do
        resultado += romanos_letras[en_cual_letra_voy]
      end
      numero_decimal = numero_decimal - (valor_romano * cuantas_veces)
    end
    en_cual_letra_voy += 1
  end

  return resultado
end


# Pirámide
# Función que pida un número e imprima una pirámide de asteriscos

def piramide(numero)
  resultado = ""
  numero.times do |renglon|
    (renglon + 1).times do
      resultado += "*"
    end
    resultado += "\n"
  end
  return resultado
end
