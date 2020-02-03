require 'Date'

class Follower

	@@all = []

	attr_accessor :name, :age, :life_motto

	def initialize(name = nil, age = nil, life_motto = nil)
		@@all << self
		@name = name
		@age = age
		@life_motto = life_motto
	end

	def self.all
		return @@all
	end

	def join_cult(cult)
		BloodOath.new(Date.today(), cult, self)
	end

	def self.of_a_certain_age(min_age)
		return @@all.select {|e| e.age >= min_age}
	end

	def bloodoaths
		return BloodOath.all.select {|e| e.follower == self}
	end

	def cults
		return self.bloodoaths.map {|e| e.cult}
	end

	def my_cults_slogans
		self.cults.each {|e| print e.slogan}
	end

	def how_many_cults
		return self.cults.length
	end

	def self.most_active
		@@all.sort!{|a,b| a.how_many_cults <=> b.how_many_cults}
		return @@all.select{|e| e.how_many_cults == @@all[0].how_many_cults}
	end

	def self.top_ten
		@@all.sort!{|a,b| a.how_many_cults <=> b.how_many_cults}
		return @@all.last(10)
	end

end
