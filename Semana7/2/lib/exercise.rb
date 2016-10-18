class Exercise

  attr_accessor :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def self.load(array)
    result = []

    array.each do |exercise_hash|
      result << new(exercise_hash["name"], exercise_hash["calories"])
    end

    result
  end

end
