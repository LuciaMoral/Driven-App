# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
puts "clean DB"
Driver.destroy_all

puts "create at least 3 drivers"

file.URI.open('https://res.cloudinary.com/dtwo70uhi/image/upload/v1643919468/ben-parker-OhKElOkQ3RE-unsplash_vdgspi.jpg')
john = Driver.new(
  name: "John Smith",
  license_type: "car",
  years_driving: 10,
  transmission: "manual",
  location: "Europe",
  price: 20
)
john.photo.attach(io: file, filename: 'john.jpg', content_type: 'image/jpg')
john.save!

file.URI.open('https://res.cloudinary.com/dtwo70uhi/image/upload/v1643981071/edward-cisneros-_H6wpor9mjs-unsplash_rvm7kb.jpg')
charlotte = Driver.new(
  name: "Charlotte Milliken",
  license_type: "car",
  years_driving: 17,
  transmission: "automatic",
  location: "Europe",
  price: 18
)
charlotte.photo.attache(io: file, filename: 'charlotte.jpg', content_type: 'image/jpg')
charlotte.save!

file.URI.open('https://res.cloudinary.com/dtwo70uhi/image/upload/v1643919468/joseph-gonzalez-iFgRcqHznqg-unsplash_xxvblm.jpg')
tobias = Driver.new(
  name: "Tobias Weber",
  license_type: "HGV",
  years_driving: 25,
  transmission: "manual",
  location: "Germany",
  price: 35
)
tobias.photo.attached(io: file, filename: 'tobias.jpg', content_type: 'image/jpg')
tobias.save!

puts "3 new drivers created"
