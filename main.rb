require 'pry'

require_relative 'building'
require_relative 'apartment'
require_relative 'tenant'

# apartment_one = Apartment.new price: 2000, occupied: false, balcony: true, sqft: 2700, bedrooms: 3, bathrooms: 2
# apartment_two = Apartment.new price: 3000, occupied: true, balcony: true, sqft: 2000, bedrooms: 1, bathrooms: 1
# apartment_three = Apartment.new price: 2400, occupied: false, balcony: true, sqft: 2100, bedrooms: 2, bathrooms: 2

# [apartment_one, apartment_two, apartment_three].each { |appt| building_one.apartments << appt }

# tenant_one = Tenant.new name: "Jane Smith", age: 36, sex: 'female'
# tenant_two = Tenant.new name: "John Jackson", age: 34, sex: 'male'
# tenant_three = Tenant.new name: "Pete Peterson", age: 38, sex: 'male'
# tenant_four = Tenant.new name: "Jennie Smith", age: 24, sex: 'female'
# tenant_five = Tenant.new name: "Jim Smith", age: 19, sex: 'male'
# tenant_six = Tenant.new name: "Mike Smith", age: 20, sex: 'male'

# Apartment.rent(apartment_one, [tenant_three, tenant_two])
# Apartment.rent(apartment_two, [tenant_one, tenant_four, tenant_five])
# Apartment.rent(apartment_three, [tenant_six])

# RENTAL APP

# Menu
# 1. add a new apartment to a building
# 2. add a new tenant
# 3. rent a flat

def string_input
  gets.chomp.downcase
end

def number_input
  gets.chomp.to_i
end

def menu
  puts `clear`
  puts "***Welcome to Erika's Estate Agents***"
  print "Would you like to add a new (apart)ment, register a new (tenant), list an apartment as (rented) or (q)uit: "
  gets.chomp.downcase
end

def create_new_apartment(name, price, occupied, balcony, sqft, bedrooms, tenants=[])
  name = Apartment.new price: price, occupied: occupied, balcony: balcony, sqft: sqft, bedrooms: bedrooms, tenants: tenants
end

def add_new_apartment
  print "Name the apartment: "
  name = string_input

  print "Price: "
  price = number_input

  print "Occupied (yes/no): "
  occupied = string_input
  if occupied == 'yes'
    occupied = true
  else
    occupied = false
  end

  print "Balcony (yes/no): "
  balcony = string_input
  if occupied == 'yes'
    occupied = true
  else
    occupied = false
  end

  print "Square feet: "
  sqft = number_input

  print "Number of bedrooms: "
  bedrooms = number_input

  print "Tenants, if occupied: "
  tenants = string_input

  create_new_apartment(name, price, occupied, balcony, sqft, bedrooms, tenants=[])

end

def add_new_tenant
end

def rent_apartment
end

response = menu

while response != 'q'
  case response
  when 'apart'
    add_new_apartment
  when 'tenant'
    add_new_tenant
  when 'rented'
    rent_apartment
  end

  response = menu
end


binding.pry
nil