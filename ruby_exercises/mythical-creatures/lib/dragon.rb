class Dragon
    attr_reader :name, :color, :rider
    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @stomach = 0
    end

    def hungry?
        if @stomach < 3
            true
        else
            false
        end
    end

    def eat
        @stomach += 1
    end

end
