# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(name: "Juan", admin: true, license: true, email: 'juan@mail.com', password: "123456", password_confirmation: "123456")
User.create!(name: "Juan2", admin: false, license: true, email: 'juan2@mail.com', password: "123456", password_confirmation: "123456")
User.create!(name: "Pancho", admin: false, license: false, email: 'pancho@mail.com', password: "123456", password_confirmation: "123456")
User.create!(name: "Daniel", admin: false, license: true, email: 'daniel@mail.com', password: "123456", password_confirmation: "123456")
User.create!(name: "Carlos", admin: true, license: false, email: 'carlos@mail.com', password: "123456", password_confirmation: "123456")
User.create!(name: "Maria", admin: false, license: true, email: 'maria@mail.com', password: "123456", password_confirmation: "123456")

Ship.create!(name: "La Mamalona", capacity: 90, image: "https://static01.nyt.com/images/2020/03/07/business/07wealth-01/06wealth-01-mediumSquareAt3X.jpg", price: 13000, availability: false, sale: false, price_sale: 0)
Ship.create!(name: "La Solitaria", capacity: 20, image: "https://media.istockphoto.com/id/1161770518/es/foto/lujoso-yate-privado-a-motor-navegando-en-el-mar.jpg?s=612x612&w=0&k=20&c=rET27NTa_3RWc8rM07BllA4QDKhbfbWU9ro77s7lpm4=", price: 600, availability: false, sale: true, price_sale: 15000)
Ship.create!(name: "La Microverse", capacity: 80, image: "https://media.istockphoto.com/id/896595986/es/foto/cubierta-de-popa-soleado-de-gran-yate-privado-con-un-spa-de-hidromasaje-tumbonas-y-barbacoa-en.jpg?s=2048x2048&w=is&k=20&c=qDWW9lUHEwKm6x4qkoWBeis-8ZSrDbKlJu_eFJpvFv0=", price: 1200, availability: false, sale: true, price_sale: 90000)
Ship.create!(name: "The Champion", capacity: 50, image: "https://www.istockphoto.com/es/foto/dubrovnik-croacia-23-de-junio-de-2020-tiro-nocturno-del-super-yate-scheherazade-de-gm1290704574-386034782", price: 1000, availability: false, sale: false, price_sale: 0)
Ship.create!(name: "La Cariñosa", capacity: 15, image: "https://media.istockphoto.com/id/159276319/es/foto/lujoso-yate-a-motor-en-mar-abierto.jpg?s=2048x2048&w=is&k=20&c=NO5SPLXfucuwQ7IQ0R0DqicSZE1c9TI76mWzqTVdpCg=", price: 500, availability: false, sale: true, price_sale: 0)
Ship.create!(name: "La Cindi", capacity: 12, image: "https://media.gettyimages.com/id/480615130/es/foto/navegaci%C3%B3n-a-vela.jpg?s=612x612&w=0&k=20&c=2D9UNn5HmFv9JosB4xeEJlPlCP3n0l9_WWUuHvqwBM0=", price: 400, availability: true, sale: false, price_sale: 0)
Ship.create!(name: "La Venturosa", capacity: 16, image: "https://media.gettyimages.com/id/109864226/es/foto/bow-of-motoryacht.jpg?s=1024x1024&w=gi&k=20&c=9Ezw673mTrdIVPK_wn6jcCzdmurmOi73JlYgueMyHUo=", price: 200, availability: true, sale: false, price_sale: 0)

Reservation.create!(ship_id: 1,user_id: 2, date_start: "01-09-2022", date_end: "05-09-2022", total: 999, duration: 365, deposit: 1000, insurance: true)
Reservation.create!(ship_id: 2,user_id: 5, date_start: "04-09-2022", date_end: "05-09-2022", total: 999, duration: 365, deposit: 1000, insurance: true)
Reservation.create!(ship_id: 3,user_id: 5, date_start: "05-09-2022", date_end: "07-09-2022", total: 999, duration: 365, deposit: 1000, insurance: true)
Reservation.create!(ship_id: 1,user_id: 4, date_start: "08-09-2022", date_end: "09-09-2022", total: 999, duration: 365, deposit: 1000, insurance: true)
Reservation.create!(ship_id: 3,user_id: 2, date_start: "13-09-2022", date_end: "14-09-2022", total: 999, duration: 365, deposit: 1000, insurance: true)
Reservation.create!(ship_id: 4,user_id: 2, date_start: "18-09-2022", date_end: "19-09-2022", total: 999, duration: 365, deposit: 1000, insurance: true)
Reservation.create!(ship_id: 5,user_id: 3, date_start: "20-09-2022", date_end: "29-09-2022", total: 999, duration: 365, deposit: 1000, insurance: true)
Reservation.create!(ship_id: 3,user_id: 4, date_start: "01-10-2022", date_end: "05-10-2022", total: 999, duration: 365, deposit: 1000, insurance: true)
Reservation.create!(ship_id: 1,user_id: 5, date_start: "01-09-2022", date_end: "05-09-2022", total: 999, duration: 365, deposit: 1000, insurance: true)
Reservation.create!(ship_id: 4,user_id: 3, date_start: "01-09-2022", date_end: "05-09-2022", total: 999, duration: 365, deposit: 1000, insurance: true)
