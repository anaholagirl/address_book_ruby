require './lib/person'
require './lib/address'
require './lib/phone'
require './lib/email'

  @current_person = nil

def main_menu

  puts "Press 'a' to add a new person. Press 'x' to exit"
  input = gets.chomp

  if input == "x"
    exit
  elsif input == "a"
    puts "First Name"
    @first_name = gets.chomp
    puts  "Last Name"
    @last_name = gets.chomp
    @current_person = Person.new(@first_name, @last_name)
    add_address
  end
  main_menu
end

def add_address
  puts "Hello, '#{@first_name}', please add an address where we can reach you."
  puts "First, let's start with the address number."
  new_building = gets.chomp
  puts "What street do you live on?"
  new_street = gets.chomp
  puts "What city is it located in?"
  new_city = gets.chomp
  puts "What is the zip code?"
  new_zip = gets.chomp
  new_address = Address.new(new_building, new_street, new_city, new_zip)
  @current_person.push_address(new_address)
end
main_menu
