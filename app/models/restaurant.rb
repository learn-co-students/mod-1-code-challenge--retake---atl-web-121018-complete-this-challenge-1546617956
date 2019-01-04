class Restaurant

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # - `Restaurant.all`
  #   - returns an array of all restaurants
  def self.all
    @@all
  end

  # - `Restaurant.find_by_name(name)`
  #   - given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

  # - `Restaurant#customers`
  #   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
  def customers
    Review.all.select do |review|
      review.restaurant == self
      #all the reviews for my restaurant
    end
    customers.map do |customer|
      
      #unique list of all customers for my restaurant
    end
  end

  # - `Restaurant#reviews`
  #   - returns an array of all reviews for that restaurant
  # - `Restaurant#average_star_rating`
  #   - returns the average star rating for a restaurant based on its reviews
  # - `Restaurant#longest_review`
  #   - returns the longest review content for a given restaurant



end
