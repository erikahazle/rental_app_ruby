class Apartment
  attr_reader :balcony, :room_num, :sq_footage
  attr_accessor :price, :occupied, :tenants

  def initialize(price, sqft, bedrooms, bathrooms, tenants, being_renovated)
    @price = price
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = tenants || []
    @being_renovated = being_renovated || false
  end

  # def self.rent(apartment, tenants)
  #   tenants.each do |tenant|
  #     apartment.tenants << tenant
  #     tenant.apartment = apartment
  #   end
  # end

end