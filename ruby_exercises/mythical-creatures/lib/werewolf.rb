class Werewolf
    attr_reader :name, :location, :human, :hungry
    def initialize(name, location = "local")
        @name = name
        @location = location
        @human = true
        @hungry = false
    end

    def human?
        human
    end

    def wolf?
        !human
    end

    def change!
        @human = !human
        human == false ? @hungry = true : @hungry =false
    end

    def eats_human(human)
       unless human == false
        @hungry = false
        human.killed
       end
    end
end

class Victim
    attr_accessor :status
    def initialize
      @status = :alive
    end

    def killed
        @status = :dead
    end
end