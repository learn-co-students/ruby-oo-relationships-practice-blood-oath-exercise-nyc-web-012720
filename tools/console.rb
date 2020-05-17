require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

chiefs = Cult.new("KC Chiefs", "Kansas City", 1890, "Keep Choppin!", 17)
giants = Cult.new("NY Giants", "NYC", 1930, "We are little!", 5)
jets = Cult.new("NY Jets", "NYC", 1913, "Vroom!", 25)

lee = Follower.new("Lee", 29, "Sup")
osgood = Follower.new("Osgood", 22, "Hi")
lou = Follower.new("Lou", 32, "Puppies")
jason = Follower.new("Jason", 25, "Yolo!")
david = Follower.new("David", 28, "Haha!")
ramzy = Follower.new("Ramzy", 29, "Beep Boop!")
kelly = Follower.new("Kelly", 31, "I like to code!")
komal = Follower.new("Komal", 40, "Don't worry be happy")
jared = Follower.new("jared", 26, "Subway Eat Fresh!")
april = Follower.new("april", 22, "April flowers bring may showers")
baby = Follower.new("baby", 1, "Googoo gaga")
greg = Follower.new("Greg", 46, "banking sucks")

oath = BloodOath.new(lee, chiefs)
oath1 = BloodOath.new(osgood, giants)
oath2 = BloodOath.new(lou, jets)
oath3 = BloodOath.new(jason, jets)
oath4 = BloodOath.new(david, chiefs)
oath5 = BloodOath.new(ramzy, giants)
oath6 = BloodOath.new(kelly, chiefs)
oath7 = BloodOath.new(komal, giants)
oath8 = BloodOath.new(jared, chiefs)
oath9 = BloodOath.new(april, chiefs)
oath10 = BloodOath.new(baby, giants)
oath11 = BloodOath.new(greg, giants)

greg.join_cult(chiefs)
greg.join_cult(jets)
april.join_cult(giants)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits