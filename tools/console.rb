require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

require 'pry'


ryan = Customer.new("Ryan", "last")
arthur = Customer.new("Arther", "last")
bryan = Customer.new("Bryan", "last")
sarah = Customer.new("Sarah", "last")
cat = Customer.new("Cat", "last")
sonny = Customer.new("Sonny", "last")


restaurant1 = Restaurant.new("Everything Greek")#
restaurant2 = Restaurant.new("Everything Italian")#
restaurant3 = Restaurant.new("Everything American")#"F
restaurant4 = Restaurant.new("Everything Mexican")#"F
restaurant5 = Restaurant.new("Everything Canadian")#"C
restaurant6 = Restaurant.new("Everything German")#"

# attr_accessor :driver, :ride, :passenger
review1 = Review.new(ryan, 4, "Its good", restaurant1)
review2 = Review.new(ryan, 5, "Its good", restaurant2)
review3 = Review.new(arthur, 5, "Its good", restaurant2)
review4 = Review.new(bryan, 2, "Its good", restaurant3)
review5 = Review.new(sarah, 2, "Its good", restaurant4)
review6 = Review.new(cat, 3, "Its good", restaurant5)
review7 = Review.new(sonny, 1, "Its good", restaurant6)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
