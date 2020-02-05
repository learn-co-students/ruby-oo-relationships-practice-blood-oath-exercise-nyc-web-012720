class Follower
    attr_accessor :name, :age, :life_motto
    @@all = []
    @@date = Time.now.strftime("%Y/%d/%m")

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def join_cult(cult)
        BloodOath.new(cult, self, @@date)
    end

    def self.all 
        @@all
    end

    def self.of_a_certain_age(age)
        @@all.select do |mem|
            mem.age >= age
        end
    end

end