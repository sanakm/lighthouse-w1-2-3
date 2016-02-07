

def say_name
  puts "Adam"
end

say_name
=> "Adam"

# method with parameter
def say(name)
  puts name
end

say("Adam")
=> "Adam"

# multiple parameters
def say(name, age)
  puts name, age
end

say("Adam", 27)
=> "Adam"
=> 27
