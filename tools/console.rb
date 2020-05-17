require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

manson_family = Cult.new("Manson", "LA", 1988, "we are family")
heaven = Cult.new("Heavens Gate", "Sky", 1900, "it's all good")
davids = Cult.new("Davidians", "Texas", 2000, "don't mess with texas")

kelly = Follower.new("Kelly", 31, "be the best")
joey = Follower.new("Joey", 18, "blah blah")
eric = Follower.new("Eric", 74, "gettin high")
morgan = Follower.new("Morgan", 7, "i'm little")

oath1 = Bloodoath.new("1912-08-23", kelly, davids)
oath2 = Bloodoath.new("2012-12-26", kelly, heaven)
oath3 = Bloodoath.new("1811-12-03", morgan, manson_family)
oath4 = Bloodoath.new("1950-06-07", eric, manson_family)
oath5 = Bloodoath.new("1715-09-15", joey, davids)
oath6 = Bloodoath.new("2019-06-18", joey, heaven)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits