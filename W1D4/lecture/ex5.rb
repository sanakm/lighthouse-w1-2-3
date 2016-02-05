
class Player
    attr_reader :name, :age
    #attr_writer :name

    def initialize(name, age)
      @name = name
      @age = age
    end
end

player = Player.new("adam", 27, 100)#Player.new
p player
p player.name
#
