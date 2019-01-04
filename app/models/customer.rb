class Customer

  attr_accessor :first_name, :last_name, :full_name

  @@all = []

  def initialize(first_name, last_name, full_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = full_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end


  # - `Customer.all`
  #   - should return **all** of the customer instances
  def self.all
    @@all
  end

  # - `Customer.find_by_name(name)`
  #   - given a string of a **full name**, returns the **first customer** whose full name matches
  def self.find_by_name(name)
    @@all.find do |customer|
      customer.name == full_name
      #didnt have time to test, not sure this is correct, but I think it will need to reference back to the above full_name method
    end
  end

  # - `Customer.find_all_by_first_name(name)`
  #   - given a string of a first name, returns an **array** containing all customers with that first name
  def self.find_all_by_first_name(name)
    @@all.find do |customer|
      customer.name == first_name
      #no time to test, but this looks correct to me
    end
  end

  # - `Customer.all_names`
  #   - should return an **array** of all of the customer full names
  def self.all_names(full_name)
    all_names = []
    all_names << @full_name
    binding.pry
    #created @full_name & updated console to reflect that additional string hoping to be able to shovel that into
    #a new array... short on time, but now I'm wondering if I should've used a .join to bring the first & last names together... 
  end



  # - `Customer#add_review(restaurant, content, rating)`
  #   - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  # - `Customer#num_reviews`
  #   - Returns the total number of reviews that a customer has authored
  # - `Customer#restaurants`
  #   - Returns a **unique** array of all restaurants a customer has reviewed



end
