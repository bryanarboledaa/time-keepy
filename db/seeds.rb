# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(first_name: "Admin Cute", last_name: "Arboleda", email: "admin@timekeepy.com", password: "test1234", role: 1)
User.create(first_name: "Dummy Cutie", last_name: "Test", email: "dummy@timekeepy.com", password: "test1234", role: 0)
