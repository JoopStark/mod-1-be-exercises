class Wizard
    attr_reader :name, :bearded
    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @alertness = 3
    end

    def bearded?
        @bearded
    end

    def incantation(string)
        "sudo " << string
    end

    def rested?
        @alertness > 0 ? true : false
    end

    def cast
        @alertness -= 1
        "MAGIC MISSILE"
    end

end