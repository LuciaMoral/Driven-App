# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require "faker"
puts "clean DB"
Booking.destroy_all
Driver.destroy_all

puts "create at least 10 drivers"

female_pictures = [
  'https://res.cloudinary.com/dtwo70uhi/image/upload/v1644651886/szvoreny-attila-Z_DjhwOUvTw-unsplash_b1tcga.jpg',
  'https://res.cloudinary.com/dtwo70uhi/image/upload/v1644651451/jake-nackos-IF9TK5Uy-KI-unsplash_pwdezk.jpg',
  'https://res.cloudinary.com/dtwo70uhi/image/upload/v1644651375/christina-wocintechchat-com-SJvDxw0azqw-unsplash_b8zbz9.jpg',
  'https://res.cloudinary.com/dtwo70uhi/image/upload/v1644651375/christina-wocintechchat-com-Kpd-JMLeKJk-unsplash_itrnxp.jpg',
  'https://res.cloudinary.com/dtwo70uhi/image/upload/v1644651375/edward-cisneros-_H6wpor9mjs-unsplash_ul5a2w.jpg'
]
male_pictures = [
  'https://res.cloudinary.com/dtwo70uhi/image/upload/v1644651616/linkedin-sales-solutions-pAtA8xe_iVM-unsplash_wgrejc.jpg',
  'https://res.cloudinary.com/dtwo70uhi/image/upload/v1644651541/ali-morshedlou-WMD64tMfc4k-unsplash_pffbmq.jpg',
  'https://res.cloudinary.com/dtwo70uhi/image/upload/v1644651375/jurica-koletic-7YVZYZeITc8-unsplash_ak3fba.jpg',
  'https://res.cloudinary.com/dtwo70uhi/image/upload/v1644651375/joseph-gonzalez-iFgRcqHznqg-unsplash_ew5zzt.jpg',
  'https://res.cloudinary.com/dtwo70uhi/image/upload/v1644651375/ben-parker-OhKElOkQ3RE-unsplash_npnqtl.jpg'
]

female_pictures.each do |female_picture_url|
  file = URI.open(female_picture_url)
  female_driver = Driver.new(
    name: Faker::Name.female_first_name,
    license_type: ["A", "B", "C"].sample,
    years_driving: rand(1..30),
    transmission: ["auto", "manual"].sample,
    location: ["London", "Shoreditch", "Brixton", "Hampstead"].sample,
    price: rand(10..50)
  )
  female_driver.photo.attach(io: file, filename: female_picture_url, content_type: 'image/jpg')
  female_driver.save!
end

male_pictures.each do |male_picture_url|
  file = URI.open(male_picture_url)
  male_driver = Driver.new(
    name: Faker::Name.male_first_name,
    license_type: ["A", "B", "C"].sample,
    years_driving: rand(1..30),
    transmission: ["auto", "manual"].sample,
    location: ["London", "Shoreditch", "Brixton", "Hampstead"].sample,
    price: rand(10..50)
  )
  male_driver.photo.attach(io: file, filename: male_picture_url, content_type: 'image/jpg')
  male_driver.save!
end
puts "10 new drivers created"

# file = URI.open('https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
# john = Driver.new(
#   name: "John Smith",
#   license_type: "car",
#   years_driving: 10,
#   transmission: "manual",
#   location: "117 Junction Road, London, N19 5PX",
#   price: 20
# )
# john.photo.attach(io: file, filename: 'john.jpg', content_type: 'image/jpg')
# john.save!

# file = URI.open('https://res.cloudinary.com/dtwo70uhi/image/upload/v1643981071/edward-cisneros-_H6wpor9mjs-unsplash_rvm7kb.jpg')
# charlotte = Driver.new(
#   name: "Charlotte Milliken",
#   license_type: "car",
#   years_driving: 17,
#   transmission: "automatic",
#   location: "'16 Villa Gaudelet, Paris",
#   price: 18
# )
# charlotte.photo.attach(io: file, filename: 'charlotte.jpg', content_type: 'image/jpg')
# charlotte.save!

# file = URI.open('https://res.cloudinary.com/dtwo70uhi/image/upload/v1643919468/joseph-gonzalez-iFgRcqHznqg-unsplash_xxvblm.jpg')
# tobias = Driver.new(
#   name: "Tobias Weber",
#   license_type: "HGV",
#   years_driving: 25,
#   transmission: "manual",
#   location: "9 Emser Strasse, Berlin, 12501",
#   price: 35
# )
# tobias.photo.attach(io: file, filename: 'tobias.jpg', content_type: 'image/jpg')
# tobias.save!
