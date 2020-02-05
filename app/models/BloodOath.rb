class BloodOath
    attr_accessor :cult, :follower, :date
    @@all = []

    def initialize(cult, follower, date)
        @cult = cult
        @follower = follower
        @date = date
        @@all << self
    end

    def initiation_date
        self.date
    end

    def self.all 
        @@all
    end
end