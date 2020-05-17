require 'pry'

class Follower
    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def cults
       oaths = Bloodoath.all.select { |oath| oath.follower == self} #all the oaths for a follower
       oaths.map { |oath| oath.cult} #all the cults for a follower
    end

    def join_cult(date, cult)
        Bloodoath.new(date, self, cult)
    end

    def self.of_a_certain_age(age)
        @@all.select { |follower| follower.age >= age}
    end

    def my_cults_slogans
        oaths = Bloodoath.all.select {|oath| oath.follower == self}
        motto = oaths.map {|oath| oath.cult.slogan}
        print motto
    end

    def 

    def self.all
        @@all
    end

end