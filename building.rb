class Building
  # attr_reader :floors, :address, :apartment_no, :concierge, :age
  attr_accessor :apartments
  def initialize(options = {})
    # floors - number
    @floors = options[:floors]
    # address - string
    @address = options[:address]
    # apartment number - number
    @apartment_no = options[:apartment_no]
    # concierge - boolean
    @concierge = options[:concierge]
    # age - number
    @age = options[:age]
    @apartments = options[:apartments] || []
  end

end