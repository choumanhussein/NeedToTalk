# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(name: "admin", email: "admin@admin.com", password: "123456", password_confirmation: "123456", admin: true)

user = User.create(name: "guest_a", email: "guest_a@example.com", password: "guest_a", password_confirmation: "guest_a")

user = User.create(name: "guest_b", email: "guest_b@example.com", password: "guest_b", password_confirmation: "guest_b")

user = User.create(name: "admin", email: "admin_guest@admin.com", password: "123456", password_confirmation: "123456", admin: true)

user = User.create(name: "Patrick", email: "Patrick@Patrick.com", password: "123456", password_confirmation: "123456", admin: true)
