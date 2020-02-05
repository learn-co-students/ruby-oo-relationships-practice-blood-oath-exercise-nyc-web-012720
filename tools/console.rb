require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult_1 = Cult.new("CCM", "London", 1920, "1111")
cult_2 = Cult.new("Political cults", "Paris", 1999 , "2222")
cult_3 = Cult.new("Racist cults", "Seoul", 2019, "3333")
cult_4 = Cult.new("Jeffrey!", "London", 2014, "4444")

follower_1 = Follower.new("David", 33, "AAAA")
follower_2 = Follower.new("Sam", 27, "BBBB")
follower_3 = Follower.new("Paul", 44, "CCCC")
follower_4 = Follower.new("Mohammad", 52, "DDDD")


bloodOath_1 = BloodOath.new(cult_1, follower_1, "1991-03-02")
bloodOath_2 = BloodOath.new(cult_1, follower_2,"2000-02-23")
bloodOath_3 = BloodOath.new(cult_2, follower_3, "1980-08-15")
bloodOath_4 = BloodOath.new(cult_2, follower_4, "2019-11-11")
bloodOath_5 = BloodOath.new(cult_3, follower_1, "2010-04-08")
bloodOath_6 = BloodOath.new(cult_3, follower_2, "2015-05-05")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
