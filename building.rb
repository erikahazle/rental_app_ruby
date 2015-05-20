class Building
  # attr_reader :floors, :address, :apartment_no, :concierge, :age
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
end