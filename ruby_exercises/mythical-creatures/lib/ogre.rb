class Ogre
    attr_reader :name, :home, :swings, :encounter_counter
    def initialize(name, home = "Swamp")
        @name = name
        @home = home
        @swings = 0
        @encounter_counter = 0
    end

    def encounter(person)
        person.ogre_encounter(self)
        @encounter_counter += 1
    end

    def swing_at(target)
        @swings += 1
        target.gets_hit
    end

    def apologize(poor_guy)
        poor_guy.wakes
    end



end


class Human
    attr_reader :name, :encounter_counter, :notices_ogre, :life_meter, :sleep
    def initialize(name = "Jane")
        @name = name
        @encounter_counter = 0
        @notices_ogre = false
        @sleep = false
        @life_meter = 2
    end

    def ogre_encounter(the_ogre)
        @encounter_counter += 1
        if encounter_counter % 3 == 0
            @notices_ogre = true 
            the_ogre.swing_at(self)
         else
        end
    end

    def notices_ogre?
        notices_ogre
    end

    def gets_hit
        @life_meter -= 1
        @sleep = true if life_meter == 0
    end

    def knocked_out?
        sleep
    end

    def wakes
        @sleep = false
    end
end