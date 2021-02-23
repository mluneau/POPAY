# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating Subscriptions..."
premium_subscription = Subscription.create!(name: "Premium Plan", monthly_price: 1000)
regular_subscription = Subscription.create!(name: "Regular Plan", monthly_price: 500)

puts "Creating companies..."
xtrem = Company.create!(name: "Xtrem Ltd", number_of_employees: 20, subscription: premium_subscription)
popay = Company.create!(name: "Popay Inc.", number_of_employees: 5, subscription: regular_subscription)

puts "Creating users for Popay..."
louis = User.create!(email: "louis@popay.org", company: popay, password:"password", first_name: 'Louis', last_name: "A", position: "hr" )
pierre = User.create!(email: "pierre@popay.org", company: popay,  password:"password", first_name: 'Pierre', last_name: "O", position: "employee")
max = User.create!(email: "maxence@popay.org", company: popay,  password:"password", first_name: 'Maxence', last_name: "L", position: "employee")
nico = User.create!(email: "nicolas@popay.org", company: popay,  password:"password", first_name: 'Pierre', last_name: "G", position: "employee")

puts "Creating users for Xtrem..."

louis = User.create!(email: "louis@xtrem.org", company: xtrem, password:"password", first_name: 'Louis', last_name: "A", position: "employee" )
pierre = User.create!(email: "pierre@xtrem.org", company: xtrem,  password:"password", first_name: 'Pierre', last_name: "O", position: "employee")
max = User.create!(email: "maxence@xtrem.org", company: xtrem,  password:"password", first_name: 'Maxence', last_name: "L", position: "hr")
nico = User.create!(email: "nicolas@xtrem.org", company: xtrem,  password:"password", first_name: 'Pierre', last_name: "G", position: "employee")
