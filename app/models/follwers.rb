class Follower

    attr_accessor :name, :age, :motto
    @@all = []

    def initialize (name, age, motto)
        @name = name
        @age = age
        @motto = motto
        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        Bloodoath.all.select {|oath| oath.follower == self}.map {|oath| oath.cult}
    end
    
    def join_cult (date, cult)
        if self.age > cult.min_age
            Bloodoath.new(date, cult, self)
        else
            puts "You're too young to join this cult, they only sacrafice people over #{cult.min_age}."
         end
     end

    def my_cult_slogans
        self.cults.each do |cult|
            puts cult.slogan
        end
    end

    def self.follower_of_age (min_age)
        Follower.all.select {|follower| follower.age >= min_age}
    end

    # def self.most_active
    #     active = {}
    #     Bloodoath.all.each do |oath|
    #        if active[oath.follower.name]
    #         active[oath.follower.name] += 1
    #        else
    #         active[oath.follower.name] = 1
    #        end
    #     end
    #     active.sort[0][0]
    # end

    # def self.most_active
    #     active = {}
    #     Bloodoath.all.each do |oath|
    #        if active[oath.follower]
    #         active[oath.follower] += 1
    #        else
    #         active[oath.follower] = 1
    #        end
    #     end
    #     active.sort_by {|key, value| value}.reverse[0][0]
    # end

    def self.most_active
        active = {}
        Bloodoath.all.each {|oath| active[oath.follower] ? active[oath.follower] += 1 : active[oath.follower] = 1}
        active.sort_by {|key, value| value}.reverse[0][0]
    end

    def fellow_followers
        self.cults.map {|cult| cult.cult_members}.flatten.uniq.delete_if {|follower| follower == self}
    end
end