class Team

    attr_accessor :name, :motto, :members

    def initialize(team)
        @name = team[:name]
        @motto = team[:motto]
        @members = []
    end

end