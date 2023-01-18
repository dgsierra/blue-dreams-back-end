# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Reservation.create!(ship_id: 1,user_id: 1, date_start: "2001-01-01", date_end: "2002-02-02", total: 999, duration: 365, deposit: 1000, insurance: true)
