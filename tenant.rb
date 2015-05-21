class Tenant
  attr_reader :name, :age, :sex
  attr_accessor :apartment
  def initialize(name, age, sex, apartment)
    @name = name
    @age = age
    @sex = sex
    @apartment = apartment || nil
  end
end