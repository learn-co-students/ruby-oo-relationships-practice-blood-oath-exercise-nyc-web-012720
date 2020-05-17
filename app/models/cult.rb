require 'Date'

class Cult
	@@all = []

	attr_accessor :name, :location, :founding_year, :slogan

	def initialize(name = nil, location = nil, founding_year = nil, slogan = nil)
		@@all << self
		@name = name
		@location = location
		@founding_year = founding_year
		@slogan = slogan
	end

	def self.all
		return @@all
	end

	def recruit_follower(follower)
		return BloodOath.new(Date.today(), self, follower)
	end

	def bloodoaths
		return BloodOath.all.select {|e| e.cult == self}
	end

	def followers
		return self.bloodoaths.map {|e| e.follower}
	end

	def cult_population
		return self.followers.length
	end

	def self.find_by_name(name)
		return @@all.find {|e| e.name == name}
	end

	def self.find_by_location(location)
		return @@all.find {|e| e.location == location}
	end
	
	def self.find_by_founding_year(year)
		return @@all.find {|e| e.founding_year == year}
	end

	def average_age
		age_array = []
		self.followers.each {|e| age_array << e.age}
		return age_array.reduce(:+).to_f / age_array.length
	end

	def my_followers_mottos
		self.followers.each {|e| print e.life_motto}
	end

	def self.least_popular
		@@all.sort!{|a,b| a.cult_population <=> b.cult_population}
		return @@all.select{|e| e.cult_population == @@all[0].cult_population}
	end

	def self.most_common_location
		result = {}
		@@all.each {|e| 
			result[e.location] ? result[e.location] : result[e.location]= 0
			result[e.location] += 1
		}
		return result.sort_by(&:last)[-1][0]
	end

end
