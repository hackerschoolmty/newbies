class Food

  attr_accessor :name, :weight

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def self.load(array)
    result = []

    array.each do |food_hash|
      result << new(food_hash["name"], food_hash["weight"])
    end

    result
  end

end
