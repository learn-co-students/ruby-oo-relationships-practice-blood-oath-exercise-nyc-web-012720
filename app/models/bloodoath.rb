require 'Date'

class BloodOath

	@@all = []

	attr_accessor :date, :cult, :follower 

	def initialize(date, cult, follower)
		@@all << self
		@date.class == 'String' ? @date = Date.strptime(date, '%Y-%m-%d') : @date = date
		@cult = cult
		@follower = follower
	end

	def self.all
		return @@all
	end

	def date_print
	    return @date.to_s
	end

	def self.first_oath
		@@all.sort!{|a,b| a.date <=> b.date}
		return @@all.select{|e| e.date == @@all[0].date}
	end
end
