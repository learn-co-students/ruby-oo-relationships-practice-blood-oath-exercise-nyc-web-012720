require 'pry'

class Cult
    attr_accessor :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan

        @@all << self
    end

    def recruit_follower(date, follower)
        Bloodoath.new(date, follower, self)
    end

    def cult_population
       cult_instances =  Bloodoath.all.select { |oath| oath.cult == self } #array of all bloodoath instances for a specific cult
       cult_instances.length 
    end

    def self.find_name(name)
        @@all.find { |cult| cult.name == name}
    end

    def self.find_by_location(location)
        @@all.select { |cult| cult.location == location}
    end

    def self.find_by_founding_year(founding_year)
        @@all.select { |cult| cult.founding_year == founding_year}
    end

    def self.all
        @@all
    end

    def average_age
        oaths = Bloodoath.all.select { |oath| oath.cult == self}
        sum = oaths.map { |oath| oath.follower.age}.sum
        sum.to_f / oaths.length
    end

    def my_follower_mottos
        oaths = Bloodoath.all.select {|oath| oath.cult == self}
        motto = oaths.map {|oath| oath.follower.life_motto}
        puts motto
    end

    def self.least_popular
        Bloodoath.all.map {|oath| oath.follower}
    end

end