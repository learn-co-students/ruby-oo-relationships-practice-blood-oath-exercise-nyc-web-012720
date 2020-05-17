class Cult
    attr_accessor :name, :location, :founding_year, :slogan
    @@all = []
    def initialize (name, location, founding_year, slogan)
        @name = name 
        @location = location
        @founding_year = founding_year
        @slogan = slogan

        @@all << self 
    end 
    def recruit_follower (flower)
        # takes in an argument of a Follower instance and adds them to this cult's list of followers
        list = BloodOath.all.select do |bloodOath|
            bloodOath.flower == self  
        end 
        list << flower
    end 
    def cult_population
        # returns an Integer that is the number of followers in this cult
        @@all.length
    end

    def self.all 
        # returns an Array of all the cults
        @@all
    end 

    def self.find_by_name (name)
        # takes a String argument that is a name and returns a Cult instance whose name matches that argument
        @@all.find {|cult| cult.name == name}
    end 

    def self.find_by_location(location)
        # takes a String argument that is a location and returns an Array of cults that are in that location
        @@all.select do |cult|
            cult.location == location
        end 
    end 

    def self.find_by_founding_year (year)
        # takes an Integer argument that is a year and returns all of the cults founded in that year
        @@all.select do |cult|
            cult.founding_year = year
        end 
    end 

end 