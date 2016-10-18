# Weight loss application
# Some people and basic information

adrian = { name: 'Adrian', weight: 70 }
juan   = { name: 'Juan', weight: 80 }
carla  = { name: 'Carla', weight: 55 }
jorge  = { name: 'Jorge', weight: 90 }

# Some things people can do

def workout(person)
  lost_weight = (person[:weight] * 0.01).round(2)
  person[:weight] -= lost_weight
  puts "#{person[:name]} just lost #{lost_weight} kg."
end

def eat_burger(person)
  burger_weight = 0.1
  person[:weight] = (person[:weight] + burger_weight).round(2)
  puts "#{person[:name]} just ate a hamburger and gained #{burger_weight} kg!"
  puts "Yum! though!"2
end

def diet(person)
  lost_weight = (person[:weight] * 0.02).round(2)
  person[:weight] -= lost_weight
  puts "#{person[:name]} just lost #{lost_weight} kg."
end
