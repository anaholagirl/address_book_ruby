require './lib/person'
require './lib/address'
require './lib/phone'
require './lib/email'

  @current_person = nil

def main_menu

  puts "Press 'a' to add a new person. Press 'l' to list all contacts. Press 'x' to exit"
  input = gets.chomp

  if input == "x"
    exit
  elsif input == "a"
    puts "First Name"
    @first_name = gets.chomp
    puts  "Last Name"
    @last_name = gets.chomp
    @current_person = Person.new(@first_name, @last_name)
    @current_person.save
    add_address
    add_email
    add_phone
  elsif input == "l"
    Person.all.each do |person|
      puts person.first_name +  " " + person.last_name
    end
    puts "\n"
    puts "Choose a contact to view all details"
    @selected_contact = gets.chomp

    get_contact_details



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
  new_address.save
  @current_person.push_address(new_address)
end

def add_email
  puts "Enter the contacts e-mail address"
  email_input = gets.chomp
  new_email = Email.new(email_input)
  new_email.save
  @current_person.push_email(new_email)
end

def add_phone
  puts "Enter a phone number where we can contact you."
  phone_input = gets.chomp
  new_phone = Phone.new(phone_input)
  new_phone.save
  @current_person.push_phone(new_phone)
end

def get_contact_details
  Person.all.each do |person|
    if @selected_contact == person.first_name + " " +  person.last_name
      puts "\n"
      puts person.first_name + " " + person.last_name
      person.addresses.each do |address|
        puts "1)" + address.building + " " + address.street + " " + address.city +
        " " + address.zip
      end
      person.emails.each do |email|
        puts "2)" + email.email
      end
      person.phone_numbers.each do |phone|
        puts "3)" + phone.phone_number
      end
      puts "If you would like to edit any contact details, press 1, 2 or 3"
      puts "Press 'm' to get back to the main menu"
      edit_choice = gets.chomp
      if edit_choice == "m"
        main_menu
      elsif edit_choice == "2"
        puts "which e-mail would you like to edit"
        email_old = gets.chomp
        puts "what would you like to change it to?"
        email_new = gets.chomp

        person.emails.each do |email|
          if email.email == email_old
            email.update_email(email_new)
          end
        end

      end
    end
  end
end

main_menu
