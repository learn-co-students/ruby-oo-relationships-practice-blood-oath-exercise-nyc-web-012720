
class Cult

    attr_accessor :name, :location, :year, :slogan, :min_age
    @@all = []

    def initialize (name, location, year, slogan, min_age)
        @name = name
        @location = location
        @year = year
        @slogan = slogan
        @min_age = min_age

        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower (date, follower)
        if follower.age >= self.min_age
            Bloodoath.new(date, self, follower)
        else
           puts "You're too young to join this cult, we only sacrafice people over #{self.min_age}."
        end
    end

    def cult_population
        Bloodoath.all.select {|oath| oath.cult == self}.length
    end

    def self.find_by_name (name)
        self.all.find {|cult| cult.name == name}
    end

    def self.find_by_location (location)
        self.all.find {|cult| cult.location == location}
    end

    def self.find_by_year (year)
        self.all.find {|cult| cult.year == year}
    end

    def cult_members
        Bloodoath.all.select {|oath| oath.cult == self}.map {|oath| oath.follower}
    end

    def avg_age
        self.cult_members.reduce(0) {|sum, follower| sum + follower.age.to_f} / self.cult_population
    end

    def cult_mottos
        self.cult_members.each do |follower|
            puts follower.motto
        end
    end

    def self.least_popular
        Cult.all.max {|cult| cult.cult_population}
    end

    def self.most_common_loc
        popular_location = {}
        Cult.all.each do |cult|
           if popular_location[cult.location]
            popular_location[cult.location] += 1
           else
            popular_location[cult.location] = 1
           end
        end
        popular_location.sort[0][0]
    end

    # def self.most_common_loc
    #     popular_location = {}
    #     Cult.all.each do |cult|
    #        if popular_location[cult.location]
    #         popular_location[cult.location] += 1
    #        else
    #         popular_location[cult.location] = 1
    #        end
    #     end
    #     popular_location.sort_by {|key, value| value}.reverse[0][0]
    # end

end