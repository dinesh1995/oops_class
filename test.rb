class Shape
	def initialize(color, dimensions, type)
		@color = color
		@dimensions = dimensions
		@type = type
	end

	def calculate()
		if @type == "square"
			puts "Area of square: #{@dimensions.to_i * @dimensions.to_i}"
		elsif @type == "rectangle"
			@length = @dimensions.split(",")[0].to_i
			@breath = @dimensions.split(",")[1].to_i
			puts "Area of rectangle: #{@length * @breath}"
		elsif @type == "cube"
			@length = @dimensions.split(",")[0].to_i
			@breath = @dimensions.split(",")[1].to_i
			@height = @dimensions.split(",")[2].to_i
			puts "Volume of cube: #{@length * @breath * @height}"
		elsif @type == "circle"
			puts "Area of circle: #{3.14 * @dimensions.to_i}"
		elsif @type == "sphere"
			puts "Volume of sphere: #{1.33 * 3.14 * @dimensions.to_i}"
		end
	end
end

class Square < Shape
	def initialize(color, dimensions)
		super(color, dimensions, 'square')
	end
end

class Rectangle < Shape
	def initialize(color, dimensions)
		super(color, dimensions, 'rectangle')
	end
end

class Cube < Shape
	def initialize(color, dimensions)
		super(color, dimensions, 'cube')
	end
end

class Circle < Shape
	def initialize(color, dimensions)
		super(color, dimensions, 'circle')
	end
end

class Sphere < Shape
	def initialize(color, dimensions)
		super(color, dimensions, 'sphere')
	end
end

sq = Square.new("blue","5")
sq.calculate()

re = Rectangle.new("red","5,3")
re.calculate

cu = Cube.new("red","5,2,3")
cu.calculate

ci = Circle.new("green","6")
ci.calculate

sp = Sphere.new("black","3")
sp.calculate

