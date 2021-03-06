# Body Mass Index
#
# Escribe un programa que calcule el índice de masa de una persona basada en su altura y su peso.
# BMI = peso / (altura ** 2)
#
# Ejemplo:
#   bmi(persona_1) => 20.2

# persona_1 = {
#   nombre: "Ernesto Flores",
#   edad: 24,
#   altura: 1.72,
#   peso: 60.0
# }
#
# persona_2 = {
#   nombre: "Lucía González",
#   edad: 35,
#   altura: 1.55,
#   peso: 54.0
# }
#
# persona_3 = {
#   nombre: "Roberto Gómez",
#   edad: 53,
#   altura: 1.81,
#   peso: 105.0
# }

def bmi(bato)
  return bato[:peso] / (bato[:altura] ** 2)
end

david = {
    nombre: "David",
    altura: 1.80,
    peso: 75
  }
puts bmi(david)

# puts bmi(persona_1)
# puts bmi(persona_2)
# puts bmi(persona_3)
