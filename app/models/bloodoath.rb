class BloodOath
    attr_accessor :initiation_date, :follower, :cult

    @@all = []

    def initialize(follower, cult)
        @follower = follower
        @cult = cult
        @initiation_date = Time.now.strftime('%Y-%m-%d')

        @@all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        time_ordered_array = @@all.sort{|a, b| a.initiation_date <=> b.initiation_date}
        time_ordered_array[0]
    end

end