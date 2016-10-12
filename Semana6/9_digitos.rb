# Digitos
#
# Escribe una función que reciba un número entero y regrese un arreglo con cada dígito como un
# elemento.
#
# Ejemplo:
#   digitos(1987) => [1, 9, 8, 7]

def digitos(numero)
  arreglo = []
  begin
    ultimo_digito = numero % 10
    arreglo.push(ultimo_digito)
    numero /= 10
  end while numero > 0
  return arreglo.reverse
end

puts digitos(1987).join(" ")
