
puts "Deleting database.."
User.destroy_all
Store.destroy_all
Confirmation.destroy_all

puts "Creating Users.."

puts "Creating Customers.."
one = Customer.create!(fname: "one", lname: "last", username: "one", email: "one@email.com", password: "123")
two = Customer.create!(fname: "two", lname: "last", username: "two", email: "two@email.com", password: "123")
three = Customer.create!(fname: "three", lname: "last", username: "three", email: "three@email.com", password: "123")
four = Customer.create!(fname: "four", lname: "last", username: "four", email: "four@email.com", password: "123")

puts "Creating Businesses.."
saq = BusinessUser.create!(fname: "john", lname: "doe", username: "saq", email: "saq@email.com", password: "123")
sqdc = BusinessUser.create!(fname: "jane", lname: "doe", username: "sqdc", email: "sqdc@email.com", password: "123")
iga = BusinessUser.create!(fname: "jj", lname: "doe", username: "iga", email: "iga@email.com", password: "123")


puts "Creating Stores.."
saq_villeray = Store.new(name: "Saq Villeray", address: "123 Villeray", capacity: "10")
saq_villeray.user = saq
saq_villeray.save

sqdc_berri = Store.new(name: "SQDC Berri", address: "123 Berri", capacity: "10")
sqdc_berri.user = sqdc
sqdc_berri.save

iga_lasalle = Store.new(name: "IGA LaSalle", address: "123 LaSalle", capacity: "10")
iga_lasalle.user = iga
iga_lasalle.save

puts "Done!"

puts "Creating Confirmations.."
confirm_one = Confirmation.new(start_time: Time.now)
confirm_one.customer_id = two
confirm_one.store_id = saq_villeray
confirm_one.save 

confirm_two = Confirmation.new(start_time: Time.now)
confirm_two.customer_id =three
confirm_two.store_id = iga_lasalle
confirm_two.save

puts "Done!"
