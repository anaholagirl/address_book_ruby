require "rspec"
# require "address_book"
require "person"

describe "Person" do
  describe ".initialize" do
    it 'a new instance of a person is created' do
      new_person = Person.new('Fred', 'Smith')
      expect(new_person).to be_an_instance_of Person
    end

    it 'will return a first name' do
      new_person = Person.new('Fred', 'Smith')
      expect(new_person.first_name).to eq('Fred')
    end

    it 'will return a last name' do
      new_person = Person.new('Fred', 'Smith')
      expect(new_person.last_name).to eq('Smith')
    end

    it 'will add the new person to the class array of all people' do
      new_person = Person.new('Fred', 'Smith')
      new_person.save
      expect(Person.all).to eq([new_person])
    end


  end
end
