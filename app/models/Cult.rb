class Cult
    attr_accessor :name, :location, :founding_year, :slogan
    @@all = []
    @@date = Time.now.strftime("%Y/%d/%m")
    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def recruit_follower(follower)
       BloodOath.new(self, follower, @@date)
    end

    def find_cult
        BloodOath.all.select do |sel|
             sel.cult == self
        end
    end

    def cult_population
            find_cult.map do |mem|
            mem.follower
        end.size
    end

    def self.all 
        @@all 
    end

    def self.find_by_name(name)
        @@all.select do |sel|
            sel.name = name
        end
    end

    def self.find_by_location(location)
        @@all.select do |sel|
            mem.location == location
        end
    end

    def self.find_by_foundin_year(year)
        @@all.select do |sel|
            sel.founding_year == year 
        end
    end
end