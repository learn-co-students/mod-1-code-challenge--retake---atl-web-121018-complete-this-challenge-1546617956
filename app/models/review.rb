class Review

  attr_reader :restaurant, :customer, :rating

  @@all = []

  def initialize(restaurant, customer, rating)
    @restaurant = restaurant
    @customer = customer
    @rating = rating
    @@all << self
  end


  # - `Review.all`
  #   - returns all of the reviews
  def self.all
    @@all
  end

  # - `Review#customer`
  #   - returns the customer object for that given review
  def customer
    @customer
  end

  #   - Once a review is created, I should not be able to change the author

  # - `Review#restaurant`
  #   - returns the restaurant object for that given review
  def review
    @review
  end

  #   - Once a review is created, I should not be able to change the restaurant

  # - `Review#rating`
  #   - returns the star rating for a restaurant. This should be an integer from 1-5
  def rating
    Restaurant.all.select do |restaurant|
      restaurant.review == self 
    binding.pry
  end

  # - `Review#content`
  #   - returns the review content, as a string, for a particular review
  def content

  end


end
