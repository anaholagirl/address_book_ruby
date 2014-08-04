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
  end
end
