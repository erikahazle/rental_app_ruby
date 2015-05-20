class Apartment

  attr_reader :balcony, :room_num, :sq_footage
  attr_accessor :price, :occupied, :tenants

  def initialize(options = {})
    # price - float
    @price = options[:price]
    # occupied - boolean
    @occupied = options[:occupied]
    # balcony - boolean
    @balcony = options[:balcony]
    # sq_footage - number
    @sqft = options[:sqft]
    # tenants - array
    @bedrooms = options[:bedrooms]
    @tenants = options[:tenants] || []
  end

  def self.rent(apartment, tenants)
    tenants.each do |tenant|
      apartment.tenants << tenant
      tenant.apartment = apartment
    end
  end

end