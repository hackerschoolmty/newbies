require 'yaml'

# Joint practice
# 1. Load YAML file with all data
# 2. Create instances of all persons in yml file
# 3. Require
# 3. Create instances of all foods and exercises in yml file
# 

class Person

  attr_accessor :name, :weight

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

end

# Practice 2. Pair programming
# 100 days of trial!
# 1. Each person randomly eats or execercises randomly
# 2. The exercise and food is also chosen randomly
# 3. Print the name and weight of each person after the 100 days
# Bonus: Also print the % of weight lost
