# #### Build out the following methods on the `Review` class
#
require 'pry'

class Review

    attr_accessor :customer, :restaurant, :rating, :content
    # attr_reader :customer
    @@all = []

    def initialize(customer, rating, content, restaurant)
        @customer = customer
        @rating = rating
        @content = content
        @restaurant = restaurant
        @@all << self
    end

    # - `Review.all`
    #   - returns all of the reviews
    def self.all
        @@all
    end
    # - `Review#customer`
    #   - returns the customer object for that given review
    #   - Once a review is created, I should not be able to change the author
    # - `Review#restaurant`
    #   - returns the restaurant object for that given review
    #   - Once a review is created, I should not be able to change the restaurant
    # - `Review#rating`
    #   - returns the star rating for a restaurant. This should be an integer from 1-5
    # - `Review#content`
    #   - returns the review content, as a string, for a particular review
end
