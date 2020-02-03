class Cult
    attr_accessor :name, :location, :founding_year, :slogan, :minimum_age

    @@all = []

    def initialize(name, location, founding_year, slogan, minimum_age)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @minimum_age = minimum_age

        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        @@all.find{|cult| cult.name == name}
    end

    def self.find_by_location(location)
        @@all.find{|cult| cult.location == location}
    end

    def self.find_by_founding_year(year)
        @@all.find{|cult| cult.founding_year == year}
    end

    def self.least_popular
        least_active = @@all[0].followers.count
        least_pop_cult = nil
        @@all.each{|cult| 
            if cult.followers.count <= least_active
                least_active = cult.followers.count
                least_pop_cult = cult
            end
        }
        least_pop_cult
    end

    def self.most_common_location
        cities = @@all.map{|cult| cult.location}
        cities_count = Hash.new(0)
        cities.each{|city|
            cities_count[city] += 1
        }
        most_locations = 0
        most_city = nil
        cities_count.each_pair{|city, count| 
            if count > most_locations
                most_locations = count
                most_city = city
            end
        }
        most_city
    end

    def recruit_follower(follower)
        if follower.age >= @minimum_age
            BloodOath.new(follower, self)
        else
           p "You are too young boi."
        end
    end

    def followers
        oaths = BloodOath.all.select{|oath| oath.cult == self}
        oaths.map{|oath| oath.follower}
    end

    def cult_population
        self.followers.count 
    end

    def average_age
        total_age = self.followers.reduce(0){|total, follower| total + follower.age}
        total_age / self.cult_population
    end

    def my_followers_mottos
        self.followers.map{|follower| follower.life_motto}
    end

end