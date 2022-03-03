require "./remover.rb"
require "./foods.rb"

class Animal
    def initialize(type, number_of_legs, name = "Unknown")
      @id = Random.rand(1..1000)
      @name = name
      @number_of_legs = number_of_legs
      @type = type
      @liked_food = NoFood.new()
    end

    def id
      @id
    end
    
    def type
      @type
    end

    def number_of_legs
      @number_of_legs
    end

    def name
      @name
    end

    def name=(value)
      @name = value
    end

    def speak
      if @type == "dog"
        "Woof, woof"
      elsif @type == "spider"
        "..."
      end
    end

    def remove_leg
      remover = Remover.new()
      @number_of_legs = remover.decrease(@number_of_legs)
    end

    def likes_food?(food)
      @liked_food.is_liked?(food)
    end
end

animal_1 = Animal.new("Rex", 4)
#To check whether the legs have reduced
animal_1.remove_leg
animal_2 = Animal.new("Bob", 8)