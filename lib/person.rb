class Person

  @@all_persons = []

  def Person.all
    @@all_persons
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def save
    @@all_persons << self
  end
end
