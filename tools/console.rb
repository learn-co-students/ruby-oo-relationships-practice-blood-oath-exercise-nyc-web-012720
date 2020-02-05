require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cult1 = Cult.new("Cult One", "NY", 1994, "Nice my timbs")
cult2 = Cult.new("Cult Two", "NJ", 1530, "Two Chainz")
cult3 = Cult.new("Cult Three", "MA", 2016, "Three blind mice")
cult4 = Cult.new("Cult Four", "FL", 2020, "Four eyes")
cult5 = Cult.new("Cult Five", "CA", 2002, "Whats poppin 5")
cult6 = Cult.new("Cult Six", "CA", 1988, "six flags!")


follower1 = Follower.new("Ricky", 25, "This 1 is the one")
follower2 = Follower.new("Halton", 25, "These 2 are the two")
follower3 = Follower.new("Adit", 26, "This 3 is the three")
follower4 = Follower.new("Greg", 31, "This 4 is the four")
follower5 = Follower.new("Osgood", 22, "These 5 is five")
follower6 = Follower.new("Steven", 18, "These 6 are six")


blood1 = Bloodoath.new("1994-07-07", cult1, follower4)
blood2 = Bloodoath.new("2006-01-14", cult3, follower5)
blood3 = Bloodoath.new("1990-09-30", cult5, follower2)
blood4 = Bloodoath.new("1999-12-25", cult2, follower4)
blood5m = Bloodoath.new("1995-03-03", cult2, follower6)
blood6mf = Bloodoath.new("1909-12-25", cult4, follower4)
blood6mf = Bloodoath.new("1909-12-25", cult4, follower1)
blood7mf = Bloodoath.new("2019-04-28", cult2, follower5)

# newoath_recruit = cult5.recruit_follower(follower2)
# population_cult5 = cult5.cult_population
# cult5_follower_instances = cult5.followers
cult_class1 = Cult.find_by_name("Cult Five")
cult_class2 = Cult.find_by_location("CA")
cult_class3 = Cult.find_by_founding_year(1988)
followers_cults = follower4.cults
newoath_join = follower6.join_cult(cult3)
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
