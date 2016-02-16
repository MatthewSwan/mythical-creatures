class Vampire
    def initialize(name, pet = "bat", parched = true)
          @name = name
          @pet = pet
          @parched = parched
    end

    def name
      @name
    end

    def pet
      @pet
    end

    def thirsty?
         @parched == true
    end

    def drink
        @parched = false
    end
end
