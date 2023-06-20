class Medusa
    attr_reader :name, :statues
    def initialize(name)
        @name = name
        @statues = []
    end
     
    def stare(name_of_victim)
        @statues << name_of_victim
        name_of_victim.make_stoned
        process_extra_victims
    end

    def process_extra_victims
        if @statues.count >= 4
            old_victim = @statues.shift
            old_victim.make_unstoned
        end
    end
end

class Person
    attr_reader :name, :stoned
    def initialize(name)
        @name = name
        @stoned = false
    end

    def make_stoned
        @stoned = true
    end

    def make_unstoned
        @stoned = false
    end

    def stoned?
        @stoned
    end
end

