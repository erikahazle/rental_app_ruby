require 'pry'

require_relative 'building'
require_relative 'apartment'
require_relative 'tenant'

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
    print "Price: "; price = gets.chomp
    print "Square feet: "; sqft = gets.chomp
    print "Number of bedrooms: "; bedrooms = gets.chomp
    print "Number of bathrooms: "; bathrooms = gets.chomp
    print "Tenants, if occupied: "; tenants = gets.chomp

    building.add_new_apartment(price, sqft, bedrooms, bathrooms, tenants)
    binding.pry
  when 'tenant'
    add_new_tenant
  when 'rented'
    rent_apartment
  end
  response = menu
end


binding.pry
nil