class Pirate
    attr_reader :name, :job, :booty
    def initialize(name, job = "Scallywag")
        @name = name
        @job = job
        @karma = 0
        @booty = 0
    end

    def commit_heinous_act
        @karma -= 1
    end

    def cursed?
        @karma <= -3 ? true : false
    end

    def rob_ship
        @booty +=100
    end

end
