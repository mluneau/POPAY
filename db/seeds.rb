# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "and Empyting Transactions..."
Transaction.destroy_all
puts "Emptying Bank Accounts"
BankAccount.destroy_all
puts "Emptying Users"
User.destroy_all
puts "Emptying Companies"
Company.destroy_all
puts "Emptying Subscriptions"
Subscription.destroy_all





puts "Creating Subscriptions..."
premium_subscription = Subscription.create!(name: "Premium Plan", monthly_price: 1000)
regular_subscription = Subscription.create!(name: "Regular Plan", monthly_price: 500)

puts "Creating companies..."
xtrem = Company.create!(name: "Xtrem Ltd", number_of_employees: 20, subscription: premium_subscription)
popay = Company.create!(name: "Popay Inc.", number_of_employees: 5, subscription: regular_subscription)



puts "Creating users for Popay..."
louis_popay = User.create!(email: "louis@popay.org", company: popay, password:"password", first_name: 'Louis', last_name: "A", position: "hr" )
pierre_popay = User.create!(email: "pierre@popay.org", company: popay,  password:"password", first_name: 'Pierre', last_name: "O", position: "employee")
max_popay = User.create!(email: "maxence@popay.org", company: popay,  password:"password", first_name: 'Maxence', last_name: "L", position: "employee")
nico_popay = User.create!(email: "nicolas@popay.org", company: popay,  password:"password", first_name: 'Pierre', last_name: "G", position: "employee")



puts "Creating users for Xtrem..."

louis_xtrem = User.create!(email: "louis@xtrem.org", company: xtrem, password:"password", first_name: 'Louis', last_name: "A", position: "employee" )
pierre_xtrem = User.create!(email: "pierre@xtrem.org", company: xtrem,  password:"password", first_name: 'Pierre', last_name: "O", position: "employee")
max_xtrem = User.create!(email: "maxence@xtrem.org", company: xtrem,  password:"password", first_name: 'Maxence', last_name: "L", position: "hr")
nico_xtrem = User.create!(email: "nicolas@xtrem.org", company: xtrem,  password:"password", first_name: 'Pierre', last_name: "G", position: "employee")



puts "Creating bank accounts for Xtrem..."
bank_account_louis_xtrem = BankAccount.create!(user: louis_xtrem, bank_name: "Goldman Sachs", bank_address: "1, Wall Street", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_max_xtrem = BankAccount.create!(user: max_xtrem, bank_name: "LCL", bank_address: "1, Avenue des champs Elysées", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU4")
bank_account_nico_xtrem = BankAccount.create!(user: nico_xtrem, bank_name: "Société Générale", bank_address: "1, Avenue de la moulah", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU4")
bank_account_pierre_xtrem = BankAccount.create!(user: pierre_xtrem, bank_name: "HSBC", bank_address: "1, Avenue du biff", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU4")


puts "Creating bank accounts for Popay..."
bank_account_louis_popay = BankAccount.create!(user: louis_popay, bank_name: "BNP Paribas", bank_address: "2 avenue du pognon", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_max_popay = BankAccount.create!(user: max_popay, bank_name: "Crédit Agricole", bank_address: "6 rue du billet de 100", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU4")
bank_account_nico_popay = BankAccount.create!(user: nico_popay, bank_name: "Banque Populaire", bank_address: "15 avenue de la moulah", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU4")
bank_account_pierre_popay = BankAccount.create!(user: pierre_popay, bank_name: "Caisse d'épargne", bank_address: "1, Avenue du billet de 20", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU4")

puts "Creating transactions for Xtrem"
Transaction.create!(user: nico_xtrem, amount: 1500, due_date: "15/03/2021", status: "pending", bank_account: bank_account_nico_xtrem)
Transaction.create!(user: nico_xtrem, amount: 1000, due_date: "15/01/2021", transfer_date: "16/01/2021", status: "paid", bank_account: bank_account_nico_xtrem)
Transaction.create!(user: nico_xtrem, amount: 800, due_date: "15/12/2020", transfer_date: "16/01/2020", status: "paid", bank_account: bank_account_nico_xtrem)
Transaction.create!(user: louis_xtrem, amount: 700, due_date: "15/04/2021", status: "pending", bank_account: bank_account_louis_xtrem)
Transaction.create!(user: louis_xtrem, amount: 500, due_date: "16/12/2020", transfer_date: "16/01/2020", status: "paid", bank_account: bank_account_louis_xtrem)
Transaction.create!(user: pierre_xtrem, amount: 700, due_date: "15/04/2021", status: "pending", bank_account: bank_account_pierre_xtrem)
Transaction.create!(user: max_xtrem, amount: 700, due_date: "15/05/2021", status: "pending", bank_account: bank_account_max_xtrem)

puts "Creating transactions for Popay"
Transaction.create!(user: pierre_xtrem, amount: 1500, due_date: "15/03/2021", status: "pending", bank_account: bank_account_pierre_popay)
Transaction.create!(user: pierre_xtrem, amount: 1000, due_date: "15/01/2021", transfer_date: "16/01/2021", status: "paid", bank_account: bank_account_pierre_popay)
Transaction.create!(user: pierre_xtrem, amount: 800, due_date: "15/12/2020", transfer_date: "16/01/2020", status: "paid", bank_account: bank_account_pierre_popay)
Transaction.create!(user: louis_xtrem, amount: 700, due_date: "15/04/2021", status: "pending", bank_account: bank_account_louis_popay)
Transaction.create!(user: louis_xtrem, amount: 500, due_date: "16/12/2020", transfer_date: "16/01/2020", status: "paid", bank_account: bank_account_louis_popay)
Transaction.create!(user: pierre_xtrem, amount: 700, due_date: "15/04/2021", status: "pending", bank_account: bank_account_pierre_popay)
Transaction.create!(user: max_xtrem, amount: 700, due_date: "15/05/2021", status: "pending", bank_account: bank_account_max_popay)
Transaction.create!(user: nico_xtrem, amount: 200, due_date: "15/06/2021", status: "pending", bank_account: bank_account_nico_popay)

