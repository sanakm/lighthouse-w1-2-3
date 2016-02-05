
require './Player.rb'

class Recruit < Player

    attr_accessor :health

    def initialize(name, age, health)
      super(name, age)
      @health = health
    end

    def heal
      @health += 25
      puts "Ugh, I am feeling better now..."
    end

    def take_damage
      @health -= 25
      puts "OWW"
    end

    def self.warrior
      Recruit.new("Thor", 100, 1000)
    end

    def self.army
      5.times do
        p self.warrior
      end
    end
end

r = Recruit.warrior
p r.profile
