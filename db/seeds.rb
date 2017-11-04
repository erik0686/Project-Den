# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Location must exist in order for user seed to be made. 

User.create!(email: "erik@gmail.com", password: "111111", password_confirmation: "111111", contact_info: "12345", location_id: 1)

User.create!(email: "wika@gmail.com", password: "111111", password_confirmation: "111111", contact_info: "12345", location_id: 1)

User.create!(email: "souza@gmail.com", password: "111111", password_confirmation: "111111", contact_info: "12345", location_id: 1)

