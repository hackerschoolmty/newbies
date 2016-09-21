# Ciclos
# ------

# while do
a = 1
while a < 5 do
  puts "El valor de a es #{a}"
  a += 1  # a = a + 1
end

puts

b = 5
while b > 0
  puts "El valor de b es #{b}"
  b -= 1
end

# begin while

puts

c = 3
begin
  puts "El valor de c es #{c}"
end while c > 5

# for

puts

# for (i = 1; i < 4; i++) {
#
# }

for i in 7.downto(5) do  # 1..3 = [1, 2, 3]
  puts "El valor de i es #{i}"
end

# times
puts

3.times do
  puts "Hola!"
end

puts

5.times do |valor|
  puts "Contando a #{valor}"
end

puts

prueba = 2
prueba.times do
  puts "Prueba?"
end

# break

puts

control = 0
100.times do
  puts "Hey!!"

  control += 1
  if control == 4
    break
  end
end

# next

puts

5.times do |f|
  if f == 3 or f == 1
    next
  end
  puts "F vale #{f}"
end
