# Solves the perimeter and area problem

class Square

  def initialize(side)
    @side = side
  end

  def perimeter
    @side * 4
  end

  def area
    @side * @side
  end

end

class Rectangle

  def initialize(side_a, side_b)
    @side_a = side_a
    @side_b = side_b
  end

  def perimeter
    @side_a * 2 + @side_b * 2
  end

  def area
    @side_a * @side_b
  end

end

class Circle
  PI = 3.1416

  def initialize(radius)
    @radius = radius
  end

  def perimeter
    @radius * 2 * Circle::PI
  end

  def area
    Circle::PI * @radius * @radius
  end

end

def generate_square
  puts "Cual es el lado del cuadrado?"
  side = gets().to_i
  Square.new(side)
end

def generate_circle
  puts "Cual es el radio del circulo?"
  radius = gets().to_i
  Circle.new(radius)
end

# Returns a if perimeter
# Returns b if area
def area_or_perimeter_menu
  puts "Elige una de las siguientes opciones:"
  puts "a) Perímetro"
  puts "b) Area"
  gets().chomp()
end

circle = generate_circle
option = area_or_perimeter_menu

if(option == 'a')
  puts "El perimetro es: #{circle.perimeter}"
else
  puts "El área es: #{circle.area}"
end
