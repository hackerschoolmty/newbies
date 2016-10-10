# Escribe un programa que defina a los entrevistadores para cada candidato
# Consideraciones para tu programa:
# 1. 2 entrevistadores random para cada candidato
# 2. Cuando se seleccionen los entrevistadores envía un correo al candidato
## Ejemplo output:
## Enviando correo a: hacker1@gmail.com
## Hola Jesus Lerma
## Tus entrevistadores son Edo y Rafa

INTERVIEWERS = [
  {name: 'Adrian', email: 'adrian@hsmty.mx', num_entrevistas: 0},
  {name: 'Kuri', email: 'kuri@hsmty.mx', num_entrevistas: 0},
  {name: 'JP', email: 'jp@hsmty.mx', num_entrevistas: 0},
  {name: 'Edo', email: 'edo@hstmty.mx', num_entrevistas: 0},
  {name: 'Rafa', email: 'Rafa@hsmty.mx', num_entrevistas: 0}
]

CANDIDATES = [
  {:name=>"Jesus Lerma", :email=>"hacker1@gmail.com"}, 
  {:name=>"Alejandro Sandoval", :email=>"hacker2@gmail.com"}, 
  {:name=>"Eduardo Romero", :email=>"hacker3@gmail.com"}, 
  {:name=>"Benjamin Moreno", :email=>"hacker4@gmail.com"}, 
  {:name=>"William Alvarez", :email=>"hacker5@gmail.com"}, 
  {:name=>"Pablo De Jess Garca", :email=>"hacker6@gmail.com"}, 
  {:name=>"Luis Arturo Cerda", :email=>"hacker7@gmail.com"}, 
  {:name=>"Rodrigo Camargo", :email=>"hacker8@gmail.com"}, 
  {:name=>"Andres Garza", :email=>"hacker9@gmail.com"}, 
  {:name=>"Josue Zavala", :email=>"hacker10@gmail.com"}, 
  {:name=>"Juan Garcia", :email=>"hacker11@gmail.com"}, 
  {:name=>"Yaser Almasri", :email=>"hacker12@gmail.com"}, 
  {:name=>"Omar Manjarrez", :email=>"hacker13@gmail.com"}, 
  {:name=>"Esteban Lara", :email=>"hacker14@gmail.com"}, 
  {:name=>"Daniel Brambila", :email=>"hacker15@gmail.com"}, 
  {:name=>"Jose Contreras", :email=>"hacker16@gmail.com"}, 
  {:name=>"Gustavo Prez", :email=>"hacker17@gmail.com"}, 
  {:name=>"Eduardo Williams", :email=>"hacker18@gmail.com"}, 
  {:name=>"Oliver Mendoza", :email=>"hacker19@gmail.com"}, 
  {:name=>"Angel Montoya", :email=>"hacker20@gmail.com"}, 
  {:name=>"Luis Castillo", :email=>"hacker21@gmail.com"}, 
  {:name=>"Daniel Brambila", :email=>"hacker22@gmail.com"}
]

# Our beautiful, elegant code here

CANDIDATES.each do |candidate|

  # Revisamos que los indices generados no sean iguales
  begin
    int_1 = rand(0..4)
    int_2 = rand(0..4)
  end while int_1 == int_2 or INTERVIEWERS[int_1][:num_entrevistas] >= 10 or INTERVIEWERS[int_2][:num_entrevistas] >= 10

  INTERVIEWERS[int_1][:num_entrevistas] += 1
  INTERVIEWERS[int_2][:num_entrevistas] += 1

  # Imprimimos el output con el correo de notificacion
  puts "Enviando correo a: #{candidate[:email]}"
  puts "Hola #{candidate[:name]}"
  puts "Tus entrevistadores serán #{INTERVIEWERS[int_1][:name]} y #{INTERVIEWERS[int_2][:name]}"

end

# Imprimimos cuantas entrevistas ha hecho cada quien
puts "- " * 30
acum = 0
INTERVIEWERS.each do |interviewer|
  puts "#{interviewer[:name]} realizó #{interviewer[:num_entrevistas]}"
  acum += interviewer[:num_entrevistas]
end
puts "Total de participaciones de nuestros entrevistadores: #{acum}"
