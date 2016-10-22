# Classes and objects
# A new way of thinking
class Food

  # Properties
  def initialize(name, weight)
    @name = name
    @weight = weight
  end

end

# Objects
# Instances of classes that hold information
burger = Food.new('Burger', 0.500)
apple = Food.new('Apple', 0.050)

#####################################################
#####################################################

class Exercise

  # Creates the method #calories
  attr_reader :calories
  # Creates the method #name=
  attr_writer :name
  # Yup, you guessed it. Creates both #info and #info=
  attr_accessor :info

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

end


run = Exercise.new('Running', 1000)

run.calories # 1000
run.name = "Run 5k" # => run.name => Run 5k

run.info # nil => No info yet
run.info = "5 kilometer run is good for you"
run.info # 5 kilometer run is good for you

#####################################################
#####################################################

class Person

  # Creates both the #name and the #name=method
  attr_accessor :name
  # Yup, same here
  attr_accessor :weight

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  ## Behaviour!

  def eat(food)
    # This will not work yet. Why ?
    @weight += food.weight.round(2)
  end

  def workout(exercise)
    @weight -= (exercise.calories * 0.001).round(2)
  end

  def info
    puts "Hello, my name is #{@name} and I weight: #{@weight}"
  end

end

  person = Person.new('Adrian', 70)

# Readable code FTW!
  person.workout(run)
  person.eat(apple)

  person.info
