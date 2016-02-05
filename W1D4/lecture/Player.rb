
class Player
    attr_accessor :name, :age

    def initialize(name, age)
      @name = name
      @age = age
    end

    def profile
      p "------#{@name}'s information---------"
      p "Age: #{@age}"
    end
end
