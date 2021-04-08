puts "Deleting database.."
Confirmation.destroy_all
Store.destroy_all
User.destroy_all

puts "Creating Users.."

puts "Creating Customers.."

one = User.create!(fname: "one", lname: "last", username: "one", email: "one@email.com", password: "123", type: Customer)
two = User.create!(fname: "two", lname: "last", username: "two", email: "two@email.com", password: "123", type: Customer)
three = User.create!(fname: "three", lname: "last", username: "three", email: "three@email.com", password: "123", type: Customer)
four = User.create!(fname: "four", lname: "last", username: "four", email: "four@email.com", password: "123", type: Customer)
one.save!

puts "Creating Businesses.."

saq = User.create!(fname: "john", lname: "doe", username: "saq", email: "saq@email.com", password: "123", type: BusinessUser)
sqdc = User.create!(fname: "jane", lname: "doe", username: "sqdc", email: "sqdc@email.com", password: "123", type: BusinessUser)
iga = User.create!(fname: "jj", lname: "doe", username: "iga", email: "iga@email.com", password: "123", type: BusinessUser)
saq.save!

puts "Creating Stores.."

saq_express = Store.new(name: "Saq Express", address: "954 Decarie montreal quebec", capacity: "10")
saq_express.user = saq
saq_express.save!

sqdc_berri = Store.new(name: "SQDC Berri", address: "123 Berri montreal quebec", capacity: "10")
sqdc_berri.user = sqdc
sqdc_berri.save

iga_lasalle = Store.new(name: "IGA LaSalle", address: "123 LaSalle montreal quebec", capacity: "10")
iga_lasalle.user = iga
iga_lasalle.save

puts "Creating Confirmations.."
start_time = Time.now
end_time = start_time + 1.hour

tep = Confirmation.new(start_time: start_time, end_time: end_time, position: 5)
tep.user_id = one.id
tep.store = saq_express
tep.save!

confirm_one = Confirmation.new(start_time: start_time + 30.minutes, end_time: end_time + 30.minutes, position: 10)
confirm_one.user_id = two.id
confirm_one = sqdc_berri
confirm_one.save

confirm_two = Confirmation.new(start_time: start_time + 45.minutes, end_time: end_time + 45.minutes, position: 3)
confirm_two.user_id =three.id
confirm_two = iga_lasalle
confirm_two.save

puts "Done!"
