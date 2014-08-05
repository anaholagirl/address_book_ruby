class Address

  @@all_addresses = []

  def Address.all
    @@all_addresses
  end

  def initialize(building, street, city, zip)
    @building = building
    @street = street
    @city = city
    @zip = zip
  end

  def building
    @building
  end

  def street
    @street
  end

  def city
    @city
  end

  def zip
    @zip
  end

  def save
    @@all_addresses << self
  end

  def full_address
    @building + " " + @street + " " + @city + " " + @zip
  end

  def remove_address(address)
    @addresses.delete(address)
  end

end
