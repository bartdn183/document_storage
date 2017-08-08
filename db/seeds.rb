# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ email: "bartdn184@gmail.com", password: "123456", user_type: "pending"}, { email: "bartdn185@gmail.com", password: "123456", user_type: "pending"}, {email: "bartdn186@gmail.com", password: "123456", user_type: "pending"}, {email: "bartdn187@gmail.com", password: "123456", user_type: "pending"}, {email: "bartdn188@gmail.com", password: "123456", user_type: "pending"}, {email: "bartdn189@gmail.com", password: "123456", user_type: "pending"}])
p "OK!"