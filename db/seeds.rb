# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




require 'faker'
100.times do
doc = Doctor.create!(first_name:Faker::Name.first_name,last_name:Faker::Name.last_name,zip_code:Faker::Code.nric(min_age: 27, max_age: 75))
pat = Patient.create!(first_name:Faker::Name.first_name,last_name:Faker::Name.last_name)
rdv = Appointment.create!(doctor: doc, patient: pat,date:Faker::Date.forward(days: 23))
place = City.create!(doctor: doc, patient: pat, name:Faker::Address.full_address)
end

#a = Appointment.create(doctor: d, patient: p)


=begin
Doctor.create(first_name:"Coco",last_name:"bloco",specialty:"croco",zip_code:"1234")
Patient.create(first_name:"Balabala",last_name:"karakas")

=end


puts "VOICI LES 100  DOCTORS et PATIENTS en RDV !!!"
