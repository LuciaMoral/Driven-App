# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "clean DB"
Driver.destroy_all

puts "create at least 3 drivers"

Driver.create!(
  name: "John Smith",
  license_type: "car",
  years_driving: 10,
  transmission: "manual",
  location: "Europe",
  price:
  photo:
 )

 Driver.create!(
  name: "Charlotte Milliken",
  license_type: "car",
  years_driving: 17,
  transmission: "automatic",
  location: "Europe",
  price:
  photo:
 )

 Driver.create!(
  name: "Tobias Weber",
  license_type: "HGV",
  years_driving: 25,
  transmission: "manual",
  location: "Germany",
  price:
  photo:
 )

 require "open-uri"
