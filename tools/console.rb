require_relative '../config/environment.rb'

# def reload
#   load 'config/environment.rb'
# end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
red = Cult.new("Red", "Jamaica", 1985, "Everybody be happy")
blue = Cult.new("Blue", "USA", 1995, "Everybody be sad")
yellow = Cult.new("Yellow", "India", 1925, "Everybody be angry")
green = Cult.new("Green", "USA", 1935, "Everybody be crazy")

a = Follower.new("a", 18, "Wheeee")
b = Follower.new("b", 24, "Whooo Girls")
c = Follower.new("c", 28, "Go Girls")
d = Follower.new("d", 30, "I hate people")

a.join_cult(red)
a.join_cult(yellow)
a.join_cult(blue)
a.join_cult(green)
b.join_cult(red)
b.join_cult(blue)
c.join_cult(blue)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits