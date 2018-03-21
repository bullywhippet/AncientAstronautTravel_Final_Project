# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Removing existing data'
Category.destroy_all


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


Category.create(name: 'Good for Solo travel')
Category.create(name: 'Good for Group travel')
Category.create(name: 'Adventure')
Category.create(name: 'Romantic')

Tour.create(name: 'Viracocha Adventure',
            description: 'Starting at the Gateway of the sun in Pum Punku, you will retrace the steps that Viracocha made when he entered the world and created humanity. The gateway of the sun is carved out of a single piece of a 12-10 granite stone with amazing precision. You will then travel via wormhole to the Ichnaea Nebula where untold adventure await. Trip may last as long as you like, or for eternity.',
            price: 3400.00,
            category: Category.find_by(name: 'Adventure'))
