class Member

    attr_accessor :name, :power, :bio
    ALL = []
    def initialize(member)
        @name = member[:name]
        @power = member[:power]
        @bio = member[:bio]
        ALL << self
    end

    def self.all 
        ALL 
    end
end