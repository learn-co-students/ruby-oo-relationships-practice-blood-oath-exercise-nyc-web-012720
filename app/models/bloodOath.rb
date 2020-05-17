class BloodOath 
    attr_accessor :cult, :flower, :initiation_date
    @@all = []
    def initialize (cult, flower, initiation_date)
        @cult = cult
        @flower = flower
        @initiation_date = initiation_date

        @@all << self
    end 
    def self.all 
        @@all 
    end 
    
end 