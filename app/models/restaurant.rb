require 'pry'

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
      self.all.find do |x|
          x.name == name
      end
  end

  #### Restaurant

  # - `Restaurant#customers`
  #   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
  def customer

  end

  # - `Restaurant#reviews`
  #   - returns an array of all reviews for that restaurant
  def reviews
      Review.all.select do |x|
          # x.self == self
          # this didnt work, and was unable to do below
      end
  end


  # - `Restaurant#average_star_rating`
  #   - returns the average star rating for a restaurant based on its reviews
  def average_star_rating
      self.reviews.each do |x|
          # rating
      end
  end

  # - `Restaurant#longest_review`
  #   - returns the longest review content for a given restaurant
  def longest_review
      self.reviews.each do |x|
          # x.content.length
      end
  end
end
