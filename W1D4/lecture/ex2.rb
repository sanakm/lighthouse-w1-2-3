# Scope defines where in a program a variable is accessible.

# Ruby has four types of variable scope, local, global, instance and class.

name = "adam" #@name
age = 27
health = 100

# methods local to file
def say_hello
  puts "Hello, #{name}"
end

def status
  puts "Health: #{health}"
end

# call on local methods
say_hello

# def status(health)
#   puts "Health: #{health}"
# end
#
# status(strength, health)
