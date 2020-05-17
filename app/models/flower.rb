class Flower
    attr_accessor :name, :age, :life_motto
    @@all = []
    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end 

    def cults 
        # returns an Array of this follower's cults
        BloodOath.all.select do |bloodOath|
            bloodOath.cult = self 
        end 

    end 
    def join_cult(cult)
        # takes in an argument of a Cult instance and adds this follower to the cult's list of followers
        list = BloodOath.all.select do |bloodOath|
            bloodOath.flower == self  
        end 
        list << cult
    end 
    def self.all 
        @@all
    end 
    def self.of_a_certain_age(age)
        # takes an Integer argument that is an age and returns an Array of followers who are the given age or older
        @@all.select do |flower|
            flower.age >= age
        end 
    end 

end 