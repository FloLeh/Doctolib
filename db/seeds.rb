require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times{City.create!(name:Faker::LeagueOfLegends.location)}

10.times{Speciality.create!(name:Faker::LeagueOfLegends.summoner_spell,doctor_id:rand(1..10))}

10.times{Doctor.create(first_name: "Dr", last_name: Faker::DragonBall.character, speciality: Faker::ElderScrolls.race, postal_code: 911)}

10.times{Patient.create(first_name: Faker::ElderScrolls.first_name, last_name: Faker::ElderScrolls.last_name)}

10.times{Appointment.create(date: "2018-07-26 13:55:28", doctor_id: rand(1..10), patient_id: rand(1..10))}
