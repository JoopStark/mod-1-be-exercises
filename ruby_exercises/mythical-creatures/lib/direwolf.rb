class Direwolf
    attr_reader :name, :home, :size, :starks_to_protect
    def initialize(name, home = "Beyond the Wall", size = "Massive")
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
    end

    def protects(stark_name)
        if starks_to_protect.count < 2
            if self.home == stark_name.location
                @starks_to_protect << stark_name
                stark_name.make_safe
            end
        end
    end

    def hunts_white_walkers?
        if starks_to_protect.count == 0 
            true
        else
            false
        end
    end

    def leaves(stark_name)
        @starks_to_protect.delete(stark_name)
        stark_name.make_unsafe
        stark_name
    end










end

class Stark
    attr_reader :name, :location, :safe, :house_words
    def initialize(name, location = "Winterfell" )
        @name = name
        @location = location
        @safe = false
        @house_words = "Winter is Coming"
    end

    def safe?
        safe
    end
    
    def make_safe
        @safe = true
    end

    def make_unsafe
        @safe = false
    end

end