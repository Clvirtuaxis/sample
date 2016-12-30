class Reptiles

	attr_reader :color, :breed					# attribute reader
	attr_accessor :name										# attribute writer+reader change outside our object

	def initialize(color, breed)				# define method init with arguments
		@color = color										# instance variables available
		@breed = breed										# to other method of the Frog class
		@hungry = true										# inst variable
	end

	def feed(food)
		puts "Mmmm, " + food + "!"
		@hungry = false
	end
	
	def hungry?
		if @hungry
			puts "I'm hungry!"
		else
			puts "I'm full!"
		end
		@hungry
	end
end

class Frog < Reptiles
	def speak
		puts "Wrabbit!"
	end
end

class Iguana < Reptiles
	def speak
		puts "Hissssssss"
	end
end

iggy = Iguana.new("salmon", "marine")				# creating new object

puts iggy.inspect

puts "What class?"
puts iggy.class

puts "What noise does my iguana does?"
iggy.speak

puts "What is my iguana's breed?"
iggy.breed
puts iggy.breed

puts "Is Jar Head hungry?"
iggy.hungry?

puts "What do you eat?"
iggy.feed("algea")


frogger = Frog.new("green", "tree frog")		# creating new object frogger

puts "What color is our frog?"
puts frogger.color

puts "Let's inspect our new frog:"
puts frogger.inspect

puts "What class does our new frog belong to?"
puts frogger.class

puts "Is our new frog an object?"
puts frogger.is_a?(Object)

puts "Let's give our new frog a name"
frogger.name = "Kermit"
puts frogger.name

puts "Is my frog hungry?"
frogger.hungry?

puts "I'll feed my frog."
frogger.feed("grasshoppers")

puts "Is my frog hungry now?"
frogger.hungry?

puts "My frog can make noise!"
frogger.speak