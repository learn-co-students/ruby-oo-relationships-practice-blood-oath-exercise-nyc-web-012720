class Follower
    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_active
        most_cults = 0
        most_active_follower = nil
        @@all.each{|follower| 
            if follower.cults.count > most_cults
                most_cults = follower.cults.count
                most_active_follower = follower
            end
        }
        most_active_follower
    end

    def self.top_ten
        top_ten = @@all.sort{|a,b| b.cults.count <=> a.cults.count}
        top_ten
    end

    def cults
        oaths = BloodOath.all.select{|oath| oath.follower == self}
        oaths.map{|oath| oath.cult}
    end

    def join_cult(cult)
        if @age >= cult.minimum_age
            BloodOath.new(self, cult)
        else
            p "You are too young boi"
        end
    end

    def self.of_a_certain_age(age)
        @@all.select{|follower| follower.age >= age}
    end

    def my_cults_slogans
        self.cults.map{|cult| cult.slogan}
    end

    def fellow_cult_members
        cult_friends = {}
        self.cults.each { |cult|
            cult_friends[cult.name] = []
            cult.followers.each{|follower| 
                if follower != self
                    cult_friends[cult.name] << follower
                end
            }
        }
        cult_friends
    end

end