
class Player
    attr_reader :name, :age

    def initialize(name, age)
      @name = name
      @age = age
    end
end

player = Player.new("adam", 27)
