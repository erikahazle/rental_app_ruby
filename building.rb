class Building
  attr_accessor :apartments
  def initialize(options = {})
    # floors - number
    @floors = options[:floors]
    # address - string
    @address = options[:address]
    # concierge - boolean
    @concierge = options[:concierge]
    # age - number
    @age = options[:age]
    @apartments = options[:apartments] || []
  end

  def add_new_apartment(price, sqft, bedrooms, bathrooms, tenants)
    @apartments << Apartment.new(price, sqft, bedrooms, bathrooms, tenants)
  end

  def num_of_ready_apart
    free = @apartments.each { |apartment| apartment.being_renovated == false }
  end
end