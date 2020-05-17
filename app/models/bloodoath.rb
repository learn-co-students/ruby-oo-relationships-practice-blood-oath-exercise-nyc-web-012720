require 'pry'

class Bloodoath
    attr_accessor :initiation_date, :follower, :cult

    @@all = []

    def initialize(initiation_date, follower, cult)
        @initiation_date = initiation_date
        @follower = follower
        @cult = cult
    
        @@all << self
    end

    def self.all
        @@all
    end

end