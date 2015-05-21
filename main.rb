require 'pry'

require_relative 'building'
require_relative 'apartment'
require_relative 'tenant'

registered_tenants = []

building = Building.new floors: 3, address: "89 Geere Road, London", concierge: true, age: 100

# RENTAL APP

def menu
  puts `clear`
  puts "***Welcome to Erika's Estate Agents***"
  print "Would you like to add a new (apart)ment, register a new (tenant), list an apartment as (rented) or (q)uit: "
  gets.chomp.downcase
end

def add_new_tenant
end

def rent_apartment
end

response = menu

while response != 'q'
  case response
  when 'apart'
    # Apartment Info Input
    puts "Please enter new apartment information:"
    print "Price: "; price = gets.chomp
    print "Square feet: "; sqft = gets.chomp
    print "Number of bedrooms: "; bedrooms = gets.chomp
    print "Number of bathrooms: "; bathrooms = gets.chomp
    print "Tenants, if occupied: "; tenants = gets.chomp

    building.add_new_apartment(price, sqft, bedrooms, bathrooms, tenants, being_renovated)
  when 'tenant'
    # Tenant Info Input
    puts "Please enter new tenant information:"
    print "Name: "; name = gets.chomp
    print "Age: "; age = gets.chomp
    print "Sex(female/male): "; sex = gets.chomp
    print "Apartment, if renting already: "; apartment = gets.chomp
    # Storing registered tenant information in an array
    registered_tenants << Tenant.new(name, age, sex, apartment)
  when 'rented'
    # Apartment and Tenant Info
    puts "Please enter apartment and tenant information below"
    print "Tenant's name: "; tenant_name = gets.chomp
    tenant = registered_tenants.select { |i| i == tenant_name }
    apartment = building.apartments.sample
    # Updating tenant and apartment information
    Apartment.rent(apartment, tenant)
  end
  binding.pry
  response = menu
end

nil