# Crear un hash de hackers con todos los estudiantes de la clase
# nombre, apellido, edad y altura

hackers = {
  hacker_1: {
    nombre: "José María",
    apellido: "Sanromán de la Garza",
    edad: 33,
    altura: 180
  },
  hacker_2: {
    nombre: "Daniel",
    apellido: "Rincon",
    edad: 38,
    altura: 175
  }
}

hackers.each do |key, value|
  puts "Revelando identidad: #{key}"
  puts "Nombre completo: #{value[:nombre]} #{value[:apellido]}"
  puts "Edad: #{value[:edad]} años"
end
