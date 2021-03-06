# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed command (or created
# alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)
puts 'Removing existing data'
Tour.destroy_all
Tour.reset_pk_sequence
Category.destroy_all
Category.reset_pk_sequence
Province.destroy_all
Province.reset_pk_sequence
Page.destroy_all
Page.reset_pk_sequence

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

puts 'Creating data'

# --- create categories
puts 'Creating Categories'

Category.create(name: 'Good for Solo travel')
Category.create(name: 'Good for Group travel')
Category.create(name: 'Adventure')
Category.create(name: 'Romantic')

# --- create static pages
puts 'Creating Static Pages'

Page.create(title: 'Contact', content: "Ancient Astronaut Intergalactic Tours
                                       <br/> 123 Fake St
                                       <br/> Winnipeg, MB R3C 1Z1
                                      <br/><br/>
                                      E-mail: contact-us@aait.com")
Page.create(title: 'About', content: "Ancient Astronaut Intergalactic Tours has
                                       been operating for thousands of years,
                                       but only officially incorporated in 1968.
                                       <br/>
                                       We provide a unique experience whereby
                                        we take you from the locations where the
                                        ancient astronauts first visited on this
                                        earth to the places from whence thy came.
                                        <br/>
                                       Combining technology similar to SpaceX
                                       with newly discovered wormhole
                                       advancements, we guarantee a once in
                                        a lifetime experience.")

# --- create provinces
puts 'Creating Provinces'

Province.create(name: 'Alberta',
                pst_rate: 0, gst_rate: 5, hst_rate: 0)
Province.create(name: 'British Columbia',
                pst_rate: 7, gst_rate: 5, hst_rate: 0)
Province.create(name: 'Manitoba',
                pst_rate: 8, gst_rate: 5, hst_rate: 0)
Province.create(name: 'New-Brunswick',
                pst_rate: 0, gst_rate: 5, hst_rate: 10)
Province.create(name: 'Newfoundland and Labrador',
                pst_rate: 0, gst_rate: 0, hst_rate: 15)
Province.create(name: 'Northwest Territories',
                pst_rate: 0, gst_rate: 5, hst_rate: 0)
Province.create(name: 'Nova Scotia',
                pst_rate: 0, gst_rate: 0, hst_rate: 15)
Province.create(name: 'Nunavut',
                pst_rate: 0, gst_rate: 5, hst_rate: 0)
Province.create(name: 'Ontario',
                pst_rate: 0, gst_rate: 0, hst_rate: 13)
Province.create(name: 'Prince Edward Island',
                pst_rate: 0, gst_rate: 0, hst_rate: 15)
Province.create(name: 'Quebec',
                pst_rate: 9.975, gst_rate: 5, hst_rate: 0)
Province.create(name: 'Saskatchewan',
                pst_rate: 6, gst_rate: 5, hst_rate: 0)
Province.create(name: 'Yukon',
                pst_rate: 0, gst_rate: 5, hst_rate: 0)



# --- create tours  Note: ensure there are images n the right
# location or this will not work.
# ---
puts 'Creating default set of tours'

tour_path = '/public/uploads/tour/image/'
# 1
Tour.create(name: 'Viracocha Adventure',
            description: 'Starting at the Gateway of the sun in Pum Punku, you
                           will retrace the steps that Viracocha made when he
                           entered the world and created humanity.
                          <br/><br/>
                          The gateway of the sun is carved out of a single
                           piece of a 12-10 granite
                           stone with amazing precision.
                          <br/><br/>
                          You will then travel via wormhole  to the Ichnaea
                           Nebula where untold adventure await.
                          <br/><br/>
                          Duration: may last as long as you like,
                           or for eternity.',
            price: 42_400.42,
            image: File.open("#{Rails.root}#{tour_path}viracocha.png"),
            category: Category.find_by(name: 'Adventure'))

# 2
Tour.create(name: 'Tiahuanaco For Two',
            description: 'Tiahuanaco to Titan. A Magical adventure for two
                          starting in Tiahuanaco and visiting the
                           moon of Saturn.
                          <br/><br/>
                          This is a beautiful opportunity to show the one you
                           love that you care about history and space.
                          <br/><br/>
                          Duration: about a month.',
            price: 11_500.42,
            image: File.open("#{Rails.root}#{tour_path}tiahuanaco.jpg"),
            category: Category.find_by(name: 'Romantic'))

# 3
Tour.create(name: 'Annunaki And Beyond',
            description: 'From over a 1000 years ago, this tour will
                           acquaint you with tho Gods of Lore
                          <br/><br/>
                          This is a chance for enlightenment.
                           Recommended for 1 person.
                          <br/><br/>
                          Duration: 1 year.',
            price: 15_500.55,
            image: File.open("#{Rails.root}#{tour_path}annunaki.png"),
            category: Category.find_by(name: 'Good for Solo travel'))

# 4
Tour.create(name: 'Star Child Tour',
            description: 'Want to know how we came to exist on this planet?
                           visit every stop in the galaxy with a chance
                           to see the first visitors to earth
                           in their home planets.
                          <br/><br/>
                          This opportunity takes a lifetime. Take your friends
                           and loved ones with you.
                          <br/><br/>
                          Duration: 3 lifetimes.',
            price: 21_500.42,
            image: File.open("#{Rails.root}#{tour_path}starchild.png"),
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
            price: 2990.42,
            image: File.open("#{Rails.root}#{tour_path}gobekli.png"),
            category: Category.find_by(name: 'Romantic'))

# 6
Tour.create(name: 'Akashic Records Retreat',
            description: "The hall of Akashic records doesn't actually require
                           long distance travel. This tour package teaches you
                           the art of astral projection to access the hall.
                          <br/><br/>
                          This is a good tour for 1.
                          <br/><br/>
                          Duration: 3 days",
            price: 300.42,
            image: File.open("#{Rails.root}#{tour_path}akashic.jpg"),
            on_sale: true,
            category: Category.find_by(name: 'Good for Solo travel'))

# # 7
Tour.create(name: 'Vimana Venture',
            description: 'Be whisked away in he flying palace of yester-year
                          <br/><br/>
                          Take your friends on the trip of a life time with
                           stunning views inside and out your transportation
                           vessel.
                          <br/><br/>
                          Duration: 4 months',
            price: 42_500.42,
            image: File.open("#{Rails.root}#{tour_path}vimana.jpg"),
            category: Category.find_by(name: 'Good for Group travel'))

# # 8
Tour.create(name: 'Puerta de Hayu Marca',
            description: "The Gate of the Gods is your portal to ..
                           well we're not too sure. There is no insurance
                            provided for this tour, nor is there a guide.
                          <br/><br/>
                          We're not to sure if you will actually return
                           from this adventure or where it goes.
                          <br/><br/>
                          Duration: ???.",
            price: 4242.42,
            image: File.open("#{Rails.root}#{tour_path}lapuerta.png"),
            on_sale: true,
            category: Category.find_by(name: 'Adventure'))

# # 9
Tour.create(name: 'Derinkuyu Destination',
            description: 'Venture into the earth for a look at the way
                           the Ancient Astronauts lived at one time.
                          <br/><br/>
                          Take a group with you. You never know where
                           you may end up.
                          <br/><br/>
                          Duration: 3 Weeks',
            price: 1542.42,
            image: File.open("#{Rails.root}#{tour_path}derinkuyu.png"),
            category: Category.find_by(name: 'Good for Group travel'))

# # 10
Tour.create(name: 'Teotihuacan Tour',
            description: 'Teotihuacan advanced construction techniques
                           brought to us by the Foamasi.
                           Visit their earthly realm and
                           then visit their home planet
                          <br/><br/>
                          You should probably travel alone or in pairs,
                           as the Formasi are not fond of
                           large groups of people
                          <br/><br/>
                          Duration: takes about a month.',
            price: 21_500.42,
            image: File.open("#{Rails.root}#{tour_path}formasi.png"),
            new: true,
            category: Category.find_by(name: 'Good for Solo travel'))
