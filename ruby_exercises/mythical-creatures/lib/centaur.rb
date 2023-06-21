class Centaur 
    attr_reader :name, :breed, :standing, :stamina
    def initialize(name, breed)
        @name = name
        @breed = breed
        @standing = true
        @stamina = 3
    end

    def shoot
        if standing == true && stamina > 0
            @stamina -= 1
            'Twang!!!'
         else
            'NO!'
        end
    end

    def run
        if standing == true && stamina > 0
            @stamina -= 1
            'Clop clop clop clop!'
         else
            'NO!'
        end
    end

    def cranky?
        @stamina > 0 ? false : true
    end

    def standing?
        standing
    end

    def sleep
        if standing == true
            'NO!'
         else
            'Resting'
        end
    end

    def lay_down
        @standing = false
    end

    def laying?
        !standing
    end

    def stand_up
        @standing = true
    end

    def sleep
        if standing == false
            @stamina = 3
        else
            'NO!'
        end
    end

    def rested?
        stamina == 3
    end

    def drink
        if standing == true
            if stamina == 3
                "Pukes in Centaur"
             else
                @stamina = 3
            end
         else
            'NO!'
        end
    end
end