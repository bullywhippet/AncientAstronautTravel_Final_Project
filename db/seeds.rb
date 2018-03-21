# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Removing existing data'
Tour.destroy_all
Tour.reset_pk_sequence
Category.destroy_all
Category.reset_pk_sequence



# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

puts 'Creating data'
Category.create(name: 'Good for Solo travel')
Category.create(name: 'Good for Group travel')
Category.create(name: 'Adventure')
Category.create(name: 'Romantic')

# 1
Tour.create(name: 'Viracocha Adventure',
            description: 'Starting at the Gateway of the sun in Pum Punku, you
                           will retrace the steps that Viracocha made when he
                           entered the world and created humanity.
                          <br/><br/>
                          The gateway of the sun is carved out of a single
                           piece of a 12-10 granite stone with amazing precision.
                          <br/><br/>
                          You will then travel via wormhole  to the Ichnaea
                           Nebula where untold adventure await.
                          <br/><br/>
                          Duration: may last as long as you like,
                           or for eternity.',
            price: 34_400.42,
            image: File.open("#{Rails.root}/public/uploads/tour/image/viracocha.png"),
            category: Category.find_by(name: 'Adventure'))

# 2
Tour.create(name: 'Tiahuanaco For Two',
            description: 'Tiahuanaco to Titan. A Magical adventure for two
                          starting in Tiahuanaco and visiting the moon of Saturn.
                          <br/><br/>
                          This is a beautiful opportunity to show the one you
                           love that you care about history and space.
                          <br/><br/>
                          Duration: about a month.',
            price: 11_500.42,
            image: File.open("#{Rails.root}/public/uploads/tour/image/tiahuanaco.jpg"),
            category: Category.find_by(name: 'Romantic'))

# 3
Tour.create(name: 'Annunaki And Beyond',
            description: 'From over a 1000 years ago, this tour will
                           acquaint you with tho Gods of Lore
                          <br/><br/>
                          This is a chance for enlightenment. Recommended for 1.
                          <br/><br/>
                          Duration: 1 year.',
            price: 15_500.55,
            image: File.open("#{Rails.root}/public/uploads/tour/image/annunaki.png"),
            category: Category.find_by(name: 'Good for Solo travel'))

# 4
Tour.create(name: 'Star Child Tour',
            description: 'Want to know how we came to exist on this planet?
                           visit every stop in the galaxy with a chance
                           to see the first visitors to earth in their home planets.
                          <br/><br/>
                          This opportunity takes a lifetime. Take your friends
                           and loved ones with you.
                          <br/><br/>
                          Duration: 3 lifetimes.',
            price: 21_500.99,
            image: File.open("#{Rails.root}/public/uploads/tour/image/starchild.png"),
            category: Category.find_by(name: 'Good for Group travel'))

# 5
Tour.create(name: 'Gobekli Tepe For Two',
            description: "How better to celebrate your love than a trip to
                           'Potbelly Hill' in Turkey
                          <br/><br/>
                          This is a beautiful opportunity to show the one you
                           love that you care about history and space.
                          <br/><br/>
                          Duration: 1 week",
            price: 2990.09,
            image: File.open("#{Rails.root}/public/uploads/tour/image/gobekli.png"),
            category: Category.find_by(name: 'Romantic'))

# # 6
# Tour.create(name: 'Tiahuanaco For Two',
#             description: 'Tiahuanaco to Titan. A Magical adventure for two
#                           starting in Tiahuanaco and visiting the moon of Saturn.
#                           <br/><br/>
#                           This is a beautiful opportunity to show the one you
#                            love that you care about history and space.
#                           <br/><br/>
#                           Trip takes about a month.',
#             price: 1500.00,
#             image: File.open("#{Rails.root}/public/uploads/tour/image/tiahuanaco.png"),
#             category: Category.find_by(name: 'Romantic'))
#
# # 7
# Tour.create(name: 'Tiahuanaco For Two',
#             description: 'Tiahuanaco to Titan. A Magical adventure for two
#                           starting in Tiahuanaco and visiting the moon of Saturn.
#                           <br/><br/>
#                           This is a beautiful opportunity to show the one you
#                            love that you care about history and space.
#                           <br/><br/>
#                           Trip takes about a month.',
#             price: 1500.00,
#             image: File.open("#{Rails.root}/public/uploads/tour/image/tiahuanaco.png"),
#             category: Category.find_by(name: 'Romantic'))
#
# # 8
# Tour.create(name: 'Tiahuanaco For Two',
#             description: 'Tiahuanaco to Titan. A Magical adventure for two
#                           starting in Tiahuanaco and visiting the moon of Saturn.
#                           <br/><br/>
#                           This is a beautiful opportunity to show the one you
#                            love that you care about history and space.
#                           <br/><br/>
#                           Trip takes about a month.',
#             price: 1500.00,
#             image: File.open("#{Rails.root}/public/uploads/tour/image/tiahuanaco.png"),
#             category: Category.find_by(name: 'Romantic'))
#
# # 9
# Tour.create(name: 'Tiahuanaco For Two',
#             description: 'Tiahuanaco to Titan. A Magical adventure for two
#                           starting in Tiahuanaco and visiting the moon of Saturn.
#                           <br/><br/>
#                           This is a beautiful opportunity to show the one you
#                            love that you care about history and space.
#                           <br/><br/>
#                           Trip takes about a month.',
#             price: 1500.00,
#             image: File.open("#{Rails.root}/public/uploads/tour/image/tiahuanaco.png"),
#             category: Category.find_by(name: 'Romantic'))
#
# # 10
# Tour.create(name: 'Tiahuanaco For Two',
#             description: 'Tiahuanaco to Titan. A Magical adventure for two
#                           starting in Tiahuanaco and visiting the moon of Saturn.
#                           <br/><br/>
#                           This is a beautiful opportunity to show the one you
#                            love that you care about history and space.
#                           <br/><br/>
#                           Trip takes about a month.',
#             price: 1500.00,
#             image: File.open("#{Rails.root}/public/uploads/tour/image/tiahuanaco.png"),
#             category: Category.find_by(name: 'Romantic'))