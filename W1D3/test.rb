class Person

	attr_accessor :age, :name, :email, :eyes

	def initialize(age, name, email)
		@age = age
		@name = name
		@email = email
		@eyes = 2
	end

	def walk
		"Hey im walking down the street"
	end

	def jump
		p "Yay for jumping"
	end

end


adam = Person.new(10, "adam", "adam@88labs.com")

jon = Person.new(20, "jon", "blah@email.com")

p jon.eyes


class Cyborg < Person

end

c = Cyborg.new(20, "cy", "cy@bug.com")
puts c.class.superclass
