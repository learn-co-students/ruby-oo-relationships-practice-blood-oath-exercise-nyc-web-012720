require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

devils = Cult.new("Devil Worshipers", "New York", 800, "The Devil's a cool guy, bro.", 16)
temple = Cult.new("The Dark Temple", "New York", 1983, "It's like a normal temple, but with less light.", 18)
satan = Cult.new("The Church of Satan", "Orlando", 1946, "Those other devil worshipers are fucking posers.", 20)
devils2 = Cult.new("Blah", "LA", 800, "Test", 2)
devils3 = Cult.new("Blah", "LA", 800, "Test", 3)
devils4 = Cult.new("Blah", "LA", 800, "Test", 19)



jim = Follower.new("James Smith", 19, "I like stuff")
konrad = Follower.new("Konrad Stevenson", 35, "I don't like stuff")
three = Follower.new("Number Three", 3, "I'm the third one!")

oath1 = Bloodoath.new("2012-08-23", devils, jim)
oath2 = Bloodoath.new("2009-08-23", temple, jim)
oath3 = Bloodoath.new("2011-08-23", satan, jim)
oath4 = Bloodoath.new("2010-06-09", devils, konrad)
oath5 = Bloodoath.new("2012-01-20", devils, three)
oath6 = Bloodoath.new("2004-06-24", temple, konrad)

Cult.most_common_loc

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits