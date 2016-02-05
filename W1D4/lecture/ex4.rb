
class Player
    def initialize(name, age, health)
      @name = name
      @health = health
      @age = age
    end

    # getter
    def name
      @name
    end

    # setter
    def name=(n)
      @name = n
    end
end

player = Player.new("adam", 27, 100)#Player.new
p player
p player.name
player.name = "Bob"
p player.name
