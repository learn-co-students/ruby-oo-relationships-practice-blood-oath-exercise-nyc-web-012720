class Follower

    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def bloodoaths
        Bloodoath.all.select {|oath| oath.follower == self}
    end

    def cults
        bloodoaths.map {|oath| oath.cult}
    end

    def join_cult(cult, date="0000-00-00")
        Bloodoath.new(date, cult, self)
    end
    
    def self.of_a_certain_age(num)
        @@all.select {|followers| followers.age >= num}
    end

    def my_cults_slogans
        cults.each {|x| print x.slogan}
    end

    def self.follower_activity
        activity = self.all.map do |follower|
            {follower => follower.cults.length}
        end
        sorted_activity = activity.sort_by {|followers| followers.values[0]}
        sorted_activity.reverse
    end

    def self.most_active
        follower_activity[0]
    end

    def self.top_ten
        follower_activity[0..9]
    end

    def self.all
        @@all
    end
end