class Hobbit
    attr_reader :name, :disposition, :age
    def initialize (name, disposition = "homebody", age = 0)
        @name = name
        @disposition = disposition
        @age = age
    end

    def celebrate_birthday
        @age += 1
    end

    def adult?
         @age >= 33 ? true : false
    end

    def old?
        @age >= 101 ? true : false
    end

    def has_ring?
        @name == "Frodo" ? true : false
    end

    def is_short?
        true
    end


end