# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Empyting Notifications..."
Notification.destroy_all
puts "Empyting Transactions..."
Transaction.destroy_all
puts "Emptying Bank Accounts"
BankAccount.destroy_all
puts "Emptying Appointments"
Appointment.destroy_all
puts "Emptying Messages"
Message.destroy_all
puts "Emptying Discussions"
Discussion.destroy_all
puts "Emptying Users"
User.destroy_all
puts "Emptying Companies"
Company.destroy_all
puts "Emptying Subscriptions"
Subscription.destroy_all
puts "and Emptying Articles"
Article.destroy_all


puts "Creating Subscriptions..."
premium_subscription = Subscription.create!(name: "Premium Plan", monthly_price: 1000)
regular_subscription = Subscription.create!(name: "Regular Plan", monthly_price: 500)

puts "Creating companies..."
xtrem = Company.create!(name: "Xtrem Ltd", number_of_employees: 20, subscription: premium_subscription)
popay = Company.create!(name: "Popay Inc.", number_of_employees: 5, subscription: regular_subscription)



puts "Creating users for Popay..."
louis_popay = User.create!(email: "louis@popay.org", company: popay, password:"password", first_name: 'Louis', last_name: "A", position: "hr", annual_income: 17000, telephone: '+33670076118' )
file = URI.open("https://res.cloudinary.com/dyywcjnii/image/upload/v1614851187/whbvbv6x7kbwpipxrjdl.jpg")
louis_popay.avatar.attach(io: file, filename: 'louis.jpg', content_type: 'image/png')

pierre_popay = User.create!(email: "pierre@popay.org", company: popay,  password:"password", first_name: 'Pierre', last_name: "O", position: "employee", annual_income: 27000, telephone: '+33686240099' )
file = URI.open("https://res.cloudinary.com/dyywcjnii/image/upload/v1614851207/wwfzw3hacdn07w0pbpni.jpg")
pierre_popay.avatar.attach(io: file, filename: 'pierre.jpg', content_type: 'image/png')

max_popay = User.create!(email: "maxence@popay.org", company: popay,  password:"password", first_name: 'Maxence', last_name: "L", position: "employee", annual_income: 37000, telephone: '+33761528065' )
file = URI.open("https://res.cloudinary.com/dyywcjnii/image/upload/v1614851213/wycjifgculuv1oa8sbae.png")
max_popay.avatar.attach(io: file, filename: 'maxence.jpg', content_type: 'image/png')

nico_popay = User.create!(email: "nicolas@popay.org", company: popay,  password:"password", first_name: 'Pierre', last_name: "G", position: "employee", annual_income: 47000, telephone: '+33640120596')
file = URI.open("https://res.cloudinary.com/dyywcjnii/image/upload/v1614851220/xbgdxsl8qyoqeern3o4f.jpg")
nico_popay.avatar.attach(io: file, filename: 'nicolas.jpg', content_type: 'image/png')

puts("Creating users for Xtrem...")
### User 1 ###
louis_xtrem = User.create!(email: "louis@xtrem.org", company: xtrem, password:"password", first_name: 'Louis', last_name: "Ajacques", position: "employee", annual_income: 27000, telephone: '+33670076118')
file = URI.open("https://res.cloudinary.com/dyywcjnii/image/upload/v1614851187/whbvbv6x7kbwpipxrjdl.jpg")
louis_xtrem.avatar.attach(io: file, filename: 'louis.jpg', content_type: 'image/png')
### User 2 ###
pierre_xtrem = User.create!(email: "pierre@xtrem.org", company: xtrem,  password:"password", first_name: 'Pierre', last_name: "Olive", position: "employee", annual_income: 25000, telephone: '+33686240099')
file = URI.open("https://res.cloudinary.com/dyywcjnii/image/upload/v1614851207/wwfzw3hacdn07w0pbpni.jpg")
pierre_xtrem.avatar.attach(io: file, filename: 'pierre.jpg', content_type: 'image/png')
### User 3 ###
max_xtrem = User.create!(email: "maxence@xtrem.org", company: xtrem,  password:"password", first_name: 'Maxence', last_name: "Luneau", position: "hr", annual_income: 34000, telephone: '+33761528065')
file = URI.open("https://res.cloudinary.com/dyywcjnii/image/upload/v1614851213/wycjifgculuv1oa8sbae.png")
max_xtrem.avatar.attach(io: file, filename: 'maxence.jpg', content_type: 'image/png')
### User 4 ###
nico_xtrem = User.create!(email: "nicolas@xtrem.org", company: xtrem,  password:"password", first_name: 'Nicolas', last_name: "Gauguez", position: "employee", annual_income: 20000, telephone: '+33640120596')
file = URI.open("https://res.cloudinary.com/dyywcjnii/image/upload/v1614851220/xbgdxsl8qyoqeern3o4f.jpg")
nico_xtrem.avatar.attach(io: file, filename: 'nicolas.jpg', content_type: 'image/png')
### User 5 ###
paul_xtrem = User.create!(email: "paul@xtrem.org", company: xtrem,  password:"password", first_name: 'Paul', last_name: "Ordiz", position: "employee", annual_income: 25000, telephone: '+33686240099')
### User 6 ###
jack_xtrem = User.create!(email: "jack@xtrem.org", company: xtrem,  password:"password", first_name: 'Jack', last_name: "Perrin", position: "employee", annual_income: 35000, telephone: '+33686240099')
### User 7 ###
saul_xtrem = User.create!(email: "saul@xtrem.org", company: xtrem,  password:"password", first_name: 'Saul', last_name: "Koutarides", position: "employee", annual_income: 22000, telephone: '+33686240099')
### User 8 ###
john_xtrem = User.create!(email: "john@xtrem.org", company: xtrem,  password:"password", first_name: 'John', last_name: "Wayne", position: "employee", annual_income: 21000, telephone: '+33686240099')
### User 9 ###
alphonse_xtrem = User.create!(email: "alphonse@xtrem.org", company: xtrem,  password:"password", first_name: 'Alphonse', last_name: "Ier", position: "employee", annual_income: 22500, telephone: '+33686240099')
### User 10 ###
robin_xtrem = User.create!(email: "robin@xtrem.org", company: xtrem,  password:"password", first_name: 'Robin', last_name: "Hood", position: "employee", annual_income: 25000, telephone: '+33686240099')
### User 11 ###
philippe_xtrem = User.create!(email: "philippe@xtrem.org", company: xtrem,  password:"password", first_name: 'Philippe', last_name: "O'Malley", position: "employee", annual_income: 25000, telephone: '+33686240099')
### User 12 ###
marie_xtrem = User.create!(email: "marie@xtrem.org", company: xtrem,  password:"password", first_name: 'Marie', last_name: "Osmond", position: "employee", annual_income: 25000, telephone: '+33686240099')
### User 13 ###
maria_xtrem = User.create!(email: "maria@xtrem.org", company: xtrem,  password:"password", first_name: 'Maria', last_name: "Perez", position: "employee", annual_income: 20000, telephone: '+33686240099')
### User 14 ###
alexandra_xtrem = User.create!(email: "alexandra@xtrem.org", company: xtrem,  password:"password", first_name: 'Alexandra', last_name: "Duddinski", position: "employee", annual_income: 19000, telephone: '+33686240099')
### User 15 ###
ismael_xtrem = User.create!(email: "ismael@xtrem.org", company: xtrem,  password:"password", first_name: 'Ismael', last_name: "Renard", position: "employee", annual_income: 21200, telephone: '+33686240099')
### User 16 ###
rachida_xtrem = User.create!(email: "rachida@xtrem.org", company: xtrem,  password:"password", first_name: 'Rachida', last_name: "Tir", position: "employee", annual_income: 22000, telephone: '+33686240099')
### User 17 ###
fatima_xtrem = User.create!(email: "fatima@xtrem.org", company: xtrem,  password:"password", first_name: 'Fatima', last_name: "Raddi", position: "employee", annual_income: 29000, telephone: '+33686240099')
### User 18 ###
sandra_xtrem = User.create!(email: "sandra@xtrem.org", company: xtrem,  password:"password", first_name: 'Sandra', last_name: "Aguilar (DAF)", position: "hr", annual_income: 28000, telephone: '+33686240099')
### User 19 ###
carlos_xtrem = User.create!(email: "carlos@xtrem.org", company: xtrem,  password:"password", first_name: 'Carlos', last_name: "Tellez", position: "employee", annual_income: 27000, telephone: '+33686240099')
### User 20 ###
fiona_xtrem = User.create!(email: "fiona@xtrem.org", company: xtrem,  password:"password", first_name: 'Fiona', last_name: "Hopkins", position: "employee", annual_income: 26000, telephone: '+33686240099')


puts("Creating bank accounts for Xtrem...")
bank_account_louis_xtrem = BankAccount.create!(user: louis_xtrem, bank_name: "Goldman Sachs", bank_address: "1, Wall Street", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_max_xtrem = BankAccount.create!(user: max_xtrem, bank_name: "LCL", bank_address: "1, Avenue des champs Elysées", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU4")
bank_account_nico_xtrem = BankAccount.create!(user: nico_xtrem, bank_name: "Société Générale", bank_address: "1, Avenue de la moulah", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU4")
bank_account_nico_xtrem2 = BankAccount.create!(user: nico_xtrem, bank_name: "BNP Paribas", bank_address: "1, Avenue du biff", swift: "ABCDEFG", iban: "FR76 16289 1O27 1O50")
bank_account_pierre_xtrem = BankAccount.create!(user: pierre_xtrem, bank_name: "HSBC", bank_address: "1, Avenue du biff", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU4")
bank_account_paul_xtrem = BankAccount.create!(user: paul_xtrem, bank_name: "LCL", bank_address: "1, Avenue des champs Elysées", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_jack_xtrem = BankAccount.create!(user: jack_xtrem, bank_name: "LCL", bank_address: "1, Avenue des champs Elysées", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_saul_xtrem = BankAccount.create!(user: saul_xtrem, bank_name: "LCL", bank_address: "1, Avenue des champs Elysées", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_john_xtrem = BankAccount.create!(user: john_xtrem, bank_name: "LCL", bank_address: "1, Avenue des champs Elysées", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_alphonse_xtrem = BankAccount.create!(user: alphonse_xtrem, bank_name: "LCL", bank_address: "1, Avenue des champs Elysées", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_robin_xtrem = BankAccount.create!(user: robin_xtrem, bank_name: "LCL", bank_address: "1, Avenue des champs Elysées", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_philippe_xtrem = BankAccount.create!(user: philippe_xtrem, bank_name: "Goldman Sachs", bank_address: "1, Wall Street", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_marie_xtrem = BankAccount.create!(user: marie_xtrem, bank_name: "Goldman Sachs", bank_address: "1, Wall Street", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_maria_xtrem = BankAccount.create!(user: maria_xtrem, bank_name: "Goldman Sachs", bank_address: "1, Wall Street", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_alexandra_xtrem = BankAccount.create!(user: alexandra_xtrem, bank_name: "Goldman Sachs", bank_address: "1, Wall Street", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_ismael_xtrem = BankAccount.create!(user: ismael_xtrem, bank_name: "Goldman Sachs", bank_address: "1, Wall Street", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_rachida_xtrem = BankAccount.create!(user: rachida_xtrem, bank_name: "Goldman Sachs", bank_address: "1, Wall Street", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_fatima_xtrem = BankAccount.create!(user: fatima_xtrem, bank_name: "Goldman Sachs", bank_address: "1, Wall Street", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_sandra_xtrem = BankAccount.create!(user: sandra_xtrem, bank_name: "Goldman Sachs", bank_address: "1, Wall Street", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_carlos_xtrem = BankAccount.create!(user: carlos_xtrem, bank_name: "Goldman Sachs", bank_address: "1, Wall Street", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_fiona_xtrem = BankAccount.create!(user: fiona_xtrem, bank_name: "Goldman Sachs", bank_address: "1, Wall Street", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")

puts "Creating bank accounts for Popay..."
bank_account_louis_popay = BankAccount.create!(user: louis_popay, bank_name: "BNP Paribas", bank_address: "2 avenue du pognon", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU2")
bank_account_max_popay = BankAccount.create!(user: max_popay, bank_name: "Crédit Agricole", bank_address: "6 rue du billet de 100", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU4")
bank_account_nico_popay = BankAccount.create!(user: nico_popay, bank_name: "Banque Populaire", bank_address: "15 avenue de la moulah", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU4")
bank_account_pierre_popay = BankAccount.create!(user: pierre_popay, bank_name: "Caisse d'épargne", bank_address: "1, Avenue du billet de 20", swift: "ABCDEFG", iban: "FR76 16289 1O27 1OU4")


puts "Creating transactions for Xtrem"
### User 1 ###
Transaction.create!(user: nico_xtrem, amount: 1500, due_date: "25/02/2021", status: "pending", comment: "Wagon à payer", bank_account: bank_account_nico_xtrem)
Transaction.create!(user: nico_xtrem, amount: 800, due_date: "19/01/2021", transfer_date: "19/01/2021", status: "paid", comment: "Dentiste", bank_account: bank_account_nico_xtrem)
Transaction.create!(user: nico_xtrem, amount: 230, due_date: "11/12/2020", transfer_date: "11/12/2020", status: "paid", comment: "Cadeau mam", bank_account: bank_account_nico_xtrem2)
Transaction.create!(user: nico_xtrem, amount: 120, due_date: "08/11/2020", transfer_date: "08/10/2020", status: "paid", comment: "Disney +", bank_account: bank_account_nico_xtrem2)
Transaction.create!(user: nico_xtrem, amount: 320, due_date: "23/08/2020", transfer_date: "23/08/2020", status: "paid", comment: "Initiation au kite", bank_account: bank_account_nico_xtrem2)
Transaction.create!(user: nico_xtrem, amount: 180, due_date: "17/10/2020", transfer_date: "17/10/2020", status: "paid", comment: "Week-end Megeve", bank_account: bank_account_nico_xtrem2)
### User 2 ###
Transaction.create!(user: louis_xtrem, amount: 200, due_date: "06/01/2021", transfer_date: "16/01/2020", status: "paid", comment: "Courses", bank_account: bank_account_louis_xtrem)
Transaction.create!(user: louis_xtrem, amount: 420, due_date: "28/12/2020", transfer_date: "28/12/2020", status: "paid", comment: "Abonnement sportif", bank_account: bank_account_louis_xtrem)
Transaction.create!(user: louis_xtrem, amount: 130, due_date: "15/10/2020", transfer_date: "15/10/2020", status: "paid", comment: "Ecran Telephone", bank_account: bank_account_louis_xtrem)
### User 3 ###
Transaction.create!(user: pierre_xtrem, amount: 640, due_date: "19/02/2021", status: "paid", comment: "Rentrée des classes", bank_account: bank_account_pierre_xtrem)
Transaction.create!(user: pierre_xtrem, amount: 420, due_date: "28/12/2020", transfer_date: "28/12/2020", status: "paid", comment: "Abonnement sportif", bank_account: bank_account_pierre_xtrem)
Transaction.create!(user: pierre_xtrem, amount: 130, due_date: "15/10/2020", transfer_date: "15/10/2020", status: "paid", comment: "Ecran Telephone", bank_account: bank_account_pierre_xtrem)
### User 4 ###
Transaction.create!(user: max_xtrem, amount: 170, due_date: "15/01/2021", status: "paid", comment: "Netflix", bank_account: bank_account_max_xtrem)
Transaction.create!(user: max_xtrem, amount: 200, due_date: "06/01/2021", transfer_date: "16/01/2020", status: "paid", comment: "Courses", bank_account: bank_account_max_xtrem)
Transaction.create!(user: max_xtrem, amount: 420, due_date: "28/12/2020", transfer_date: "28/12/2020", status: "paid", comment: "Abonnement sportif", bank_account: bank_account_max_xtrem)
Transaction.create!(user: max_xtrem, amount: 130, due_date: "15/10/2020", transfer_date: "15/10/2020", status: "paid", comment: "Ecran Telephone", bank_account: bank_account_max_xtrem)
### User 5 ###
Transaction.create!(user: paul_xtrem, amount: 70, due_date: "13/02/2021", status: "paid", comment: "Diner aux chandelles", bank_account: bank_account_paul_xtrem)
Transaction.create!(user: paul_xtrem, amount: 235, due_date: "06/01/2021", transfer_date: "16/01/2020", status: "paid", comment: "Courses", bank_account: bank_account_paul_xtrem)
Transaction.create!(user: paul_xtrem, amount: 120, due_date: "28/12/2020", transfer_date: "28/12/2020", status: "paid", comment: "Abonnement sportif", bank_account: bank_account_paul_xtrem)
### User 6 ###
Transaction.create!(user: jack_xtrem, amount: 90, due_date: "04/02/2021", status: "paid", comment: "Diner aux chandelles", bank_account: bank_account_jack_xtrem)
Transaction.create!(user: jack_xtrem, amount: 140, due_date: "06/01/2021", transfer_date: "16/01/2020", status: "paid", comment: "Courses", bank_account: bank_account_jack_xtrem)
Transaction.create!(user: jack_xtrem, amount: 220, due_date: "28/12/2020", transfer_date: "28/12/2020", status: "paid", comment: "Abonnement sportif", bank_account: bank_account_jack_xtrem)
### User 7 ###
Transaction.create!(user: saul_xtrem, amount: 40, due_date: "16/02/2021", status: "paid", comment: "Diner aux chandelles", bank_account: bank_account_saul_xtrem) 
Transaction.create!(user: saul_xtrem, amount: 90, due_date: "06/01/2021", transfer_date: "16/01/2020", status: "paid", comment: "Courses", bank_account: bank_account_saul_xtrem)
### User 8 ###
Transaction.create!(user: john_xtrem, amount: 65, due_date: "21/02/2021", status: "paid", comment: "Diner aux chandelles", bank_account: bank_account_john_xtrem)
### User 9 ###
Transaction.create!(user: alphonse_xtrem, amount: 250, due_date: "14/02/2021", status: "paid", comment: "Diner aux chandelles", bank_account: bank_account_alphonse_xtrem)
Transaction.create!(user: alphonse_xtrem, amount: 200, due_date: "06/01/2021", transfer_date: "16/01/2020", status: "paid", comment: "Courses", bank_account: bank_account_alphonse_xtrem)
### User 10 ###
Transaction.create!(user: robin_xtrem, amount: 250, due_date: "14/02/2021", status: "paid", comment: "Diner aux chandelles", bank_account: bank_account_robin_xtrem)
### User 11 ###
Transaction.create!(user: philippe_xtrem, amount: 250, due_date: "14/02/2021", status: "paid", comment: "Diner aux chandelles", bank_account: bank_account_philippe_xtrem)
### User 12 ###
Transaction.create!(user: marie_xtrem, amount: 250, due_date: "14/02/2021", status: "paid", comment: "Diner aux chandelles", bank_account: bank_account_marie_xtrem)
### User 13 ###
Transaction.create!(user: maria_xtrem, amount: 200, due_date: "06/01/2021", transfer_date: "16/01/2020", status: "paid", comment: "Courses", bank_account: bank_account_maria_xtrem)
Transaction.create!(user: maria_xtrem, amount: 420, due_date: "28/12/2020", transfer_date: "28/12/2020", status: "paid", comment: "Abonnement sportif", bank_account: bank_account_maria_xtrem)
### User 14 ###
Transaction.create!(user: alexandra_xtrem, amount: 250, due_date: "18/02/2021", status: "paid", comment: "Diner aux chandelles", bank_account: bank_account_alexandra_xtrem)
Transaction.create!(user: alexandra_xtrem, amount: 250, due_date: "14/02/2021", status: "paid", comment: "Diner aux chandelles", bank_account: bank_account_alexandra_xtrem)
Transaction.create!(user: alexandra_xtrem, amount: 200, due_date: "06/01/2021", transfer_date: "16/01/2020", status: "paid", comment: "Courses", bank_account: bank_account_alexandra_xtrem)
### User 15 ###
Transaction.create!(user: ismael_xtrem, amount: 250, due_date: "14/02/2021", status: "paid", comment: "Diner aux chandelles", bank_account: bank_account_ismael_xtrem)
Transaction.create!(user: ismael_xtrem, amount: 200, due_date: "06/01/2021", transfer_date: "16/01/2020", status: "paid", comment: "Courses", bank_account: bank_account_ismael_xtrem)
### User 16 ###
Transaction.create!(user: rachida_xtrem, amount: 250, due_date: "14/02/2021", status: "paid", comment: "Diner aux chandelles", bank_account: bank_account_rachida_xtrem)
Transaction.create!(user: rachida_xtrem, amount: 200, due_date: "06/01/2021", transfer_date: "16/01/2020", status: "paid", comment: "Courses", bank_account: bank_account_rachida_xtrem)
Transaction.create!(user: rachida_xtrem, amount: 420, due_date: "28/12/2020", transfer_date: "28/12/2020", status: "paid", comment: "Abonnement sportif", bank_account: bank_account_rachida_xtrem)
### User 17 ###
Transaction.create!(user: fatima_xtrem, amount: 250, due_date: "14/02/2021", status: "paid", comment: "Diner aux chandelles", bank_account: bank_account_fatima_xtrem)
Transaction.create!(user: fatima_xtrem, amount: 200, due_date: "06/01/2021", transfer_date: "16/01/2020", status: "paid", comment: "Courses", bank_account: bank_account_fatima_xtrem)
Transaction.create!(user: fatima_xtrem, amount: 420, due_date: "28/12/2020", transfer_date: "28/12/2020", status: "paid", comment: "Abonnement sportif", bank_account: bank_account_fatima_xtrem)
### User 18 ###
Transaction.create!(user: sandra_xtrem, amount: 250, due_date: "14/02/2021", status: "paid", comment: "Diner aux chandelles", bank_account: bank_account_sandra_xtrem)
Transaction.create!(user: sandra_xtrem, amount: 200, due_date: "06/01/2021", transfer_date: "16/01/2020", status: "paid", comment: "Courses", bank_account: bank_account_sandra_xtrem)
Transaction.create!(user: sandra_xtrem, amount: 420, due_date: "28/12/2020", transfer_date: "28/12/2020", status: "paid", comment: "Abonnement sportif", bank_account: bank_account_sandra_xtrem)
### User 19 ###
Transaction.create!(user: carlos_xtrem, amount: 250, due_date: "14/02/2021", status: "paid", comment: "Diner aux chandelles", bank_account: bank_account_carlos_xtrem)
Transaction.create!(user: carlos_xtrem, amount: 200, due_date: "06/01/2021", transfer_date: "16/01/2020", status: "paid", comment: "Courses", bank_account: bank_account_carlos_xtrem)
Transaction.create!(user: carlos_xtrem, amount: 420, due_date: "28/12/2020", transfer_date: "28/12/2020", status: "paid", comment: "Abonnement sportif", bank_account: bank_account_carlos_xtrem)
### User 20 ###
Transaction.create!(user: fiona_xtrem, amount: 250, due_date: "14/02/2021", status: "paid", comment: "Diner aux chandelles", bank_account: bank_account_fiona_xtrem)
Transaction.create!(user: fiona_xtrem, amount: 130, due_date: "15/10/2020", transfer_date: "15/12/2020", status: "paid", comment: "Ecran Telephone", bank_account: bank_account_fiona_xtrem)


puts("Creating transactions for Popay")

Transaction.create!(user: pierre_popay, amount: 1500, due_date: "15/02/2021", status: "pending", comment: "Wagon à payer", bank_account: bank_account_pierre_popay)
Transaction.create!(user: pierre_popay, amount: 1000, due_date: "15/01/2021", transfer_date: "16/01/2021", status: "paid", comment: "Dentiste", bank_account: bank_account_pierre_popay)
Transaction.create!(user: pierre_popay, amount: 800, due_date: "15/12/2020", transfer_date: "16/01/2020", status: "paid", comment: "Cadeau mam", bank_account: bank_account_pierre_popay)
Transaction.create!(user: louis_popay, amount: 700, due_date: "15/02/2021", status: "paid", comment: "Diner aux chandelles", bank_account: bank_account_louis_popay)
Transaction.create!(user: louis_popay, amount: 500, due_date: "16/12/2020", transfer_date: "16/01/2020", status: "paid", comment: "Courses", bank_account: bank_account_louis_popay)
Transaction.create!(user: pierre_popay, amount: 700, due_date: "15/02/2021", status: "paid", comment: "Rentrée des classes", bank_account: bank_account_pierre_popay)
Transaction.create!(user: max_popay, amount: 700, due_date: "15/05/2020", status: "paid", comment: "Abonnement Netflix", bank_account: bank_account_max_popay)
Transaction.create!(user: nico_popay, amount: 200, due_date: "15/06/2020", status: "paid", comment: "Carosserie", bank_account: bank_account_nico_popay)


puts "Creating articles..."

#article 1
photo1 = URI.open('https://images.unsplash.com/photo-1503676260728-1c00da094a0b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1009&q=80')
article1 = Article.new(title: "L'épargne salariale", category: "Epargne", date: "12/01/2021", content: "Les sommes distribuées aux salariés peuvent être placées à votre guise en épargne salariale. L'acompte est un 1er versement sur l'achat d'une marchandise ou d'une prestation de services. Le professionnel et le consommateur sont chacun obligés de tenir leur engagement. Un contrat, un bon de commande, ou le fait de verser un acompte sont considérés comme un engagement.", time: 3)
article1.photo.attach(io: photo1, filename: 'epargne.png', content_type: 'image/png')
article1.save!
#article 2
photo2 = URI.open('https://images.unsplash.com/photo-1434030216411-0b793f4b4173?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8ZWR1Y2F0aW9ufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
article2 = Article.new(title: "Dialogue vs la Covid", category: "RH", date: "15/01/2021", content: "Si la crise a eu un impact positif, c’est en mettant en avant le dialogue social en entreprises. L'acompte est un 1er versement sur l'achat d'une marchandise ou d'une prestation de services. Le professionnel et le consommateur sont chacun obligés de tenir leur engagement. Un contrat, un bon de commande, ou le fait de verser un acompte sont considérés comme un engagement.", time: 2)
article2.photo.attach(io: photo2, filename: 'dialogue.png', content_type: 'image/png')
article2.save!
#article 3
photo3 = URI.open('https://images.unsplash.com/photo-1581078426770-6d336e5de7bf?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fGVkdWNhdGlvbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
article3 = Article.new(title: "Acompte: vos droits", category: "Droit", date: "21/01/2021", content: "L’acompte correspond au versement anticipé d’une partie du salaire du mois en cours. L'acompte est un 1er versement sur l'achat d'une marchandise ou d'une prestation de services. Le professionnel et le consommateur sont chacun obligés de tenir leur engagement. Un contrat, un bon de commande, ou le fait de verser un acompte sont considérés comme un engagement.", time:4)
article3.photo.attach(io: photo3, filename: 'droits.png', content_type: 'image/png')
article3.save!
#article 4
photo4 = URI.open('https://images.unsplash.com/photo-1491841550275-ad7854e35ca6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzF8fGVkdWNhdGlvbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
article4 = Article.new(title: "Crédit conso", category: "Frais bancaires", date: "08/02/2021", content: "Une alternative inadaptée aux attentes des français. N'attendez plus et choisissez Popay. L'acompte est un 1er versement sur l'achat d'une marchandise ou d'une prestation de services. Le professionnel et le consommateur sont chacun obligés de tenir leur engagement. Un contrat, un bon de commande, ou le fait de verser un acompte sont considérés comme un engagement.", time: 3)
article4.photo.attach(io: photo4, filename: 'credit.png', content_type: 'image/png')
article4.save!
#article 5
photo5 = URI.open('https://images.unsplash.com/photo-1601807576163-587225545555?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDR8fGVkdWNhdGlvbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
article5 = Article.new(title: "Popay vous conseille", category: "Epargne", date: "23/02/2021", content: "Fini les agios, reprenez le contrôle de vos finances en choisissant Popay dès aujourd'hui. L'acompte est un 1er versement sur l'achat d'une marchandise ou d'une prestation de services. Le professionnel et le consommateur sont chacun obligés de tenir leur engagement. Un contrat, un bon de commande, ou le fait de verser un acompte sont considérés comme un engagement.", time: 5)
article5.photo.attach(io: photo5, filename: 'conseille.png', content_type: 'image/png')
article5.save!


puts "Creating discussions for Xtrem"

### User 1 ###
pierre_discussion1 = Discussion.create!(employee_id: pierre_xtrem.id, hr_id: max_xtrem.id, topic:"Ski BlackCrows")
pierre_discussion2 = Discussion.create!(employee_id: pierre_xtrem.id, hr_id: max_xtrem.id, topic:"Accompte disponible")
pierre_discussion3 = Discussion.create!(employee_id: pierre_xtrem.id, hr_id: sandra_xtrem.id, topic:"Abbonnement Fitness")
### User 2 ###
louis_discussion1 = Discussion.create!(employee_id: louis_xtrem.id, hr_id: max_xtrem.id, topic:"Week-end Ski")
louis_discussion2 = Discussion.create!(employee_id: louis_xtrem.id, hr_id: max_xtrem.id, topic:"Accompte disponible")
louis_discussion3 = Discussion.create!(employee_id: louis_xtrem.id, hr_id: sandra_xtrem.id, topic:"Abbonnement Fitness")
### User 3 ###
nico_discussion1 = Discussion.create!(employee_id: nico_xtrem.id, hr_id: max_xtrem.id, topic:"Initiation au Kite")
nico_discussion2 = Discussion.create!(employee_id: nico_xtrem.id, hr_id: max_xtrem.id, topic:"Accompte disponible")
nico_discussion3 = Discussion.create!(employee_id: nico_xtrem.id, hr_id: sandra_xtrem.id, topic:"Abbonnement Fitness")
### User 4 ###
paul_discussion1 = Discussion.create!(employee_id: paul_xtrem.id, hr_id: sandra_xtrem.id, topic:"Accompte Novembre")
paul_discussion2 = Discussion.create!(employee_id: paul_xtrem.id, hr_id: sandra_xtrem.id, topic:"Ecran Telephone")
paul_discussion3 = Discussion.create!(employee_id: paul_xtrem.id, hr_id: max_xtrem.id, topic:"Week-end Ski")
### User 5 ###
jack_discussion1 = Discussion.create!(employee_id: jack_xtrem.id, hr_id: sandra_xtrem.id, topic:"Accompte Novembre")
jack_discussion2 = Discussion.create!(employee_id: jack_xtrem.id, hr_id: sandra_xtrem.id, topic:"Ecran Telephone")
jack_discussion3 = Discussion.create!(employee_id: jack_xtrem.id, hr_id: max_xtrem.id, topic:"Week-end Ski")
### User 6 ###
saul_discussion1 = Discussion.create!(employee_id: saul_xtrem.id, hr_id: sandra_xtrem.id, topic:"Accompte Novembre")
saul_discussion2 = Discussion.create!(employee_id: saul_xtrem.id, hr_id: sandra_xtrem.id, topic:"Ecran Telephone")
saul_discussion3 = Discussion.create!(employee_id: saul_xtrem.id, hr_id: max_xtrem.id, topic:"Week-end Ski")
### User 7 ###
john_discussion1 = Discussion.create!(employee_id: john_xtrem.id, hr_id: sandra_xtrem.id, topic:"Accompte Novembre")
john_discussion2 = Discussion.create!(employee_id: john_xtrem.id, hr_id: sandra_xtrem.id, topic:"Ecran Telephone")
john_discussion3 = Discussion.create!(employee_id: john_xtrem.id, hr_id: max_xtrem.id, topic:"Week-end Ski")
### User 8 ###
alphonse_discussion1 = Discussion.create!(employee_id: alphonse_xtrem.id, hr_id: sandra_xtrem.id, topic:"Accompte Novembre")
alphonse_discussion2 = Discussion.create!(employee_id: alphonse_xtrem.id, hr_id: sandra_xtrem.id, topic:"Ecran Telephone")
alphone_discussion3 = Discussion.create!(employee_id: alphonse_xtrem.id, hr_id: max_xtrem.id, topic:"Week-end Ski")
### User 9 ###
robin_discussion1 = Discussion.create!(employee_id: robin_xtrem.id, hr_id: sandra_xtrem.id, topic:"Accompte Novembre")
robin_discussion2 = Discussion.create!(employee_id: robin_xtrem.id, hr_id: sandra_xtrem.id, topic:"Ecran Telephone")
robin_discussion3 = Discussion.create!(employee_id: robin_xtrem.id, hr_id: max_xtrem.id, topic:"Week-end Ski")
### User 10 ###
philippe_discussion1 = Discussion.create!(employee_id: philippe_xtrem.id, hr_id: sandra_xtrem.id, topic:"Accompte Novembre")
philippe_discussion2 = Discussion.create!(employee_id: philippe_xtrem.id, hr_id: sandra_xtrem.id, topic:"Ecran Telephone")
philippe_discussion3 = Discussion.create!(employee_id: philippe_xtrem.id, hr_id: max_xtrem.id, topic:"Week-end Ski")
### User 13 ###
marie_discussion1 = Discussion.create!(employee_id: marie_xtrem.id, hr_id: sandra_xtrem.id, topic:"Accompte Novembre")
marie_discussion2 = Discussion.create!(employee_id: marie_xtrem.id, hr_id: sandra_xtrem.id, topic:"Ecran Telephone")
marie_discussion3 = Discussion.create!(employee_id: marie_xtrem.id, hr_id: max_xtrem.id, topic:"Week-end Ski")
### User 12 ###
maria_discussion1 = Discussion.create!(employee_id: maria_xtrem.id, hr_id: sandra_xtrem.id, topic:"Accompte Novembre")
maria_discussion2 = Discussion.create!(employee_id: maria_xtrem.id, hr_id: sandra_xtrem.id, topic:"Ecran Telephone")
maria_discussion3 = Discussion.create!(employee_id: maria_xtrem.id, hr_id: max_xtrem.id, topic:"Week-end Ski")
### User 13 ###
alexandra_discussion1 = Discussion.create!(employee_id: alexandra_xtrem.id, hr_id: sandra_xtrem.id, topic:"Accompte Novembre")
alexandra_discussion2 = Discussion.create!(employee_id: alexandra_xtrem.id, hr_id: sandra_xtrem.id, topic:"Ecran Telephone")
alexandra_discussion3 = Discussion.create!(employee_id: alexandra_xtrem.id, hr_id: max_xtrem.id, topic:"Week-end Ski")
### User 14 ###
ismael_discussion1 = Discussion.create!(employee_id: ismael_xtrem.id, hr_id: sandra_xtrem.id, topic:"Accompte Novembre")
ismael_discussion2 = Discussion.create!(employee_id: ismael_xtrem.id, hr_id: sandra_xtrem.id, topic:"Ecran Telephone")
ismael_discussion3 = Discussion.create!(employee_id: ismael_xtrem.id, hr_id: max_xtrem.id, topic:"Week-end Ski")
### User 15 ###
rachida_discussion1 = Discussion.create!(employee_id: rachida_xtrem.id, hr_id: sandra_xtrem.id, topic:"Accompte Novembre")
rachida_discussion2 = Discussion.create!(employee_id: rachida_xtrem.id, hr_id: sandra_xtrem.id, topic:"Ecran Telephone")
rachida_discussion3 = Discussion.create!(employee_id: rachida_xtrem.id, hr_id: max_xtrem.id, topic:"Week-end Ski")
### User 16 ###
fatima_discussion1 = Discussion.create!(employee_id: fatima_xtrem.id, hr_id: sandra_xtrem.id, topic:"Accompte Novembre")
fatima_discussion2 = Discussion.create!(employee_id: fatima_xtrem.id, hr_id: sandra_xtrem.id, topic:"Ecran Telephone")
fatima_discussion3 = Discussion.create!(employee_id: fatima_xtrem.id, hr_id: max_xtrem.id, topic:"Week-end Ski")
### User 17 ###
carlos_discussion1 = Discussion.create!(employee_id: carlos_xtrem.id, hr_id: sandra_xtrem.id, topic:"Accompte Novembre")
carlos_discussion2 = Discussion.create!(employee_id: carlos_xtrem.id, hr_id: sandra_xtrem.id, topic:"Ecran Telephone")
carlos_discussion3 = Discussion.create!(employee_id: carlos_xtrem.id, hr_id: max_xtrem.id, topic:"Week-end Ski")
### User 18 ###
fiona_discussion1 = Discussion.create!(employee_id: fiona_xtrem.id, hr_id: sandra_xtrem.id, topic:"Accompte Novembre")
fiona_discussion2 = Discussion.create!(employee_id: fiona_xtrem.id, hr_id: sandra_xtrem.id, topic:"Ecran Telephone")
fiona_discussion3 = Discussion.create!(employee_id: fiona_xtrem.id, hr_id: max_xtrem.id, topic:"Week-end Ski")


puts "Creating discussions for Popay"

### Discussion 1 ###
Discussion.create!(employee_id: pierre_popay.id, hr_id: louis_popay.id, topic:"Thuning de ma clio")
### Discussion 2 ###
Discussion.create!(employee_id: max_popay.id, hr_id: louis_popay.id, topic:"Nouveau matos de Kite")
### Discussion 3 ###
Discussion.create!(employee_id: nico_popay.id, hr_id: louis_popay.id, topic:"Paiement Figma: dev frontend")
