# Practice:
# 1. Store how much weight each person looses with key: lost_weight
# 2. Add how much each person lost in output
#
# BONUS. Add how much each person lost in % from initial weight

require './lib/people.rb'

def workout(person)
  person[:weight] = (person[:weight] - (person[:weight] * 0.01)).round(2)
end

def eat(person)
  person[:weight] = (person[:weight] + 0.1).round(2)
end

# Each person eats or works out by random for 100 days
100.times do
  PEOPLE.each do |person|
    if [true, false].sample
      workout(person)
    else
      eat(person)
    end
  end
end

PEOPLE.each do |person|
  puts "#{person[:name]}, #{person[:weight]} kg."
end
