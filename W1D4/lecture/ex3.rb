
class Player
    # Enter some attributes and behavior of a player
    attr_accessor :name

    def initialize(name, age, health)
      @name = name
      @age = age
      @health = health
    end
end

player = Player.new("adam", 27, 99)
# p player
p player.name
player.name = "thor"
p player.name
