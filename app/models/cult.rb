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

    def recruit_follower(follower, date="0000-00-00")
        Bloodoath.new(date, self, follower)
    end

    def bloodoaths
        Bloodoath.all.select {|oath| oath.cult == self}
    end

    def followers
        Bloodoath.all
            .select {|oath| oath.cult == self}
            .map {|oath| oath.follower}
    end

    def cult_population
        followers.length
    end

    def average_age
        sum = followers.reduce(0) {|agg, follower| agg + follower.age}
        avg = sum / followers.length
        avg.to_f
    end

    def my_followers_mottos
        followers.each {|follower| print follower.life_motto}
        # print mottos.join(",\n")
    end

    def self.least_popular
        #technically here is comparing amount of bloodoaths per cult, NOT followers
        #In each cult: one bloodoath per follower
        #@@all.min(1) {|a, b| a.bloodoaths.length <=> b.bloodoaths.length}
        @@all.min_by {|cult| cult.cult_population}
    end

    def self.most_common_location
        locations = {}
        local = @@all.map {|cult| cult.location}
        local.each do |x|
            if locations[x]
                locations[x] += 1
            else
                locations[x] = 1
            end
        end
        locations.max_by {|k, v| v}[0]
    end
        
    def self.all
        @@all
    end

    def self.find_by_name(name)
        @@all.find {|x| x.name == name}
    end

    def self.find_by_location(location)
        @@all.find_all {|x| x.location == location}
    end

    def self.find_by_founding_year(year)
        @@all.find_all {|x| x.founding_year == year}
    end


end