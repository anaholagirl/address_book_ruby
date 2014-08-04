class Person

  @@all_persons = []

  def Person.all
    @@all_persons
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @addresses = []
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def addresses
    @addresses
  end

  def save
    @@all_persons << self
  end

  def push_address(new_address)
    @addresses << new_address
  end

end
