require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Cult     def initialize (name, location, founding_year, slogan)
monday = Cult.new("monday", "brooklyn", 1900, "syntatic sugar")
tuesday = Cult.new("tuesday", "manhattan", 1950, "yes we can")
wednesday = Cult.new("wednesday", "queens", 2000, "health first")

# flower     def initialize(name, age, life_motto)
see_you = Flower.new("see_you", 1900, "xxxxxxxxx")
pink = Flower.new("pink", 1950, "puppppppppppy")
red_hot = Flower.new("red_hot", 2000, "yyyyyyyyy")

# bloodOath def initialize (cult, flower, initiation_date)
bloodOath1 = BloodOath.new(monday, see_you, 2015)
bloodOath2 = BloodOath.new(tuesday, pink, 2016)
bloodOath3 = BloodOath.new(wednesday, red_hot, 2020)






binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
