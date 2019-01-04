require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#restaurants
mcdonalds = Restaurant.new("McDonalds")
taco_bell = Restaurant.new("Taco Bell")
chickfila = Restaurant.new("Chick-Fil-A")

#customers
tez = Customer.new("Tez", "Smith", "Tez Smith")
cat = Customer.new("Cat", "Grayson", "Cat Grayson")
emily = Customer.new("Emily", "Wilder", "Emily Wilder")

#reviews
review1 = Review.new(mcdonalds, tez, 3)
review2 = Review.new(taco_bell, cat, 5)
review3 = Review.new(chickfila, emily, 2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
