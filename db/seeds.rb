# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PropertyType.destroy_all
puts 'Creating property type'

PropertyType.create(name: 'House')
PropertyType.create(name: 'Apartment')
PropertyType.create(name: 'Studio')
PropertyType.create(name: 'Townhouse')

Agent.destroy_all
puts 'Creating agents'

Agent.create(name: 'Hobert', phone: '0344 089 756', email: 'hobert@home.com')
Agent.create(name: 'Meagan', phone: '0344 079 706', email: 'meagan@home.com')

Property.destroy_all
puts 'Creating property'

Property.create(
  address: '1/2-4 Pyrmont Street, Pyrmont',
  description: '$1125/w
  3 bedrooms/ 2 bathrooms/ 1 car space.
  This terrace presents an exciting opportunity to rent a unique property in a premium Pyrmont setting.
  This residence has been renovated throughout and provides excellent scope for families.
  Features include:
  - Well-appointed throughout and presented in great condition
  - Two-level floorplan that features generous upstairs bedrooms
  - Well-equipped open gas kitchen flowing to outdoor area, full bathroom
  - Private outdoor areas include a courtyard garden, patio and terrace
  - Ready to live in or lease out immediately with scope to update
  - Rarely does an opportunity arise that presents a lifestyle of such value, versatility and prime positioning with Pyrmont/s host of cafes,
  shopping and the light rail station just a short stroll away.',
  image: 'https://i2.au.reastatic.net/800x600/65120f63b60cbb89d4cbbf853945054ffed6d741f6f1164c517aac8e1677f548/main.jpg',
  location: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3312.477210830517!2d151.19715921547626!3d-33.87736162693527!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ae2544c9d017%3A0x490ff8c094b625d6!2s1+Pyrmont+St%2C+Ultimo+NSW+2007!5e0!3m2!1sen!2sau!4v1564449456915!5m2!1sen!2sau',
  property_types_id: PropertyType.find_by(name: 'House').id,
  agents_id: Agent.find_by(name: 'Hobert').id
)
Property.create(
  address: '2A McDonald St, Cronulla',
  description: '$3773/w
  3 bedrooms/ 2 bathrooms/ 2 garages.
  Fully Furnished, Cronulla Ocean View Apartment
  Wake up to spectacular sunrises.
  Every day can be as relaxed or active as you want!
  Enjoy outstanding foreshore, promenade walks along the Esplanade footpath stretching from Bass and Flinders monument at the mouth of Port Hacking to Wanda surf Life Saving Club and passing by the Norfolk Island pine trees featured in some of the view photos taken from the apartment.
  Located next to Cronulla (South) Surf Life Saving Club and within easy walking to Cronulla/s shops, cinema, library and clubs, this fully renovated apartment with top floor, penthouse position, will be your home to explore the area/s abundance of top class restaurants, cafes, beaches and other natural attractions.
  This spacious, open plan, ocean view residence is one of only 2 apartments occupying the top floor with easy access up a couple of flights of stairs (building entry is at level 1).
  Features include:
  - Spectacular ocean view
  - Spacious living area
  - Covered balcony from living area
  - Air conditioning
  - Flat screen TVs
  - Internal laundry facility
  - Single lock up garage with auto door
  - Off street visitor parking
  - Close to beach, shops and public transport.
  Linen, towels, crockery & cutlery all supplied
  Sleeps 4 people in 1 queen size double bed, 1 single bed & 1 single trundle bed.

  Catch the Ferry to the sleepy village of Bundeena and its smaller neighbour, Maianbar, unspoilt hideaways that draw many visitors eager to enjoy their timeless charms.
  Visit the Kurnell Peninsula it was here, in 1770, that Captain James Cook first set foot on Australia, claiming the continent for Britain.
  Explore Sydney Tram Museum.
  Bush walk through the nations oldest park the Royal National...show more Park.
  There are plenty of attractions under the water for diving or snorkelling fans.
  Lean To Surf at Cronulla Beach.
  Kayak the Port Hacking and Woronora Rivers.
  With horse riding, ten pin bowling, rock climbing, children/s indoor play areas, museums and galleries, Leisure centres, cinemas and Golf courses near by, it is sure to keep you entertained from start to finish.
  Please ignore any online tenancy application and use the contact agent/email agent function to check availability for your preferred dates by email.',
  image: 'https://www.realestate.com.au/blog/images/1600x1600-fit,progressive/2018/09/03124057/capi_85c56dd16de2bb27937d2d9bf709348a_919959291b91444e3973d182358d49af.jpeg',
  location: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3305.6735185098855!2d151.15422474253538!3d-34.05224498514759!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12c81104c664e5%3A0xe76f79cae4610f77!2s2A+McDonald+St%2C+Cronulla+NSW+2230!5e0!3m2!1sen!2sau!4v1564450362609!5m2!1sen!2sau',
  property_types_id: PropertyType.find_by(name: 'Apartment').id,
  agents_id: Agent.find_by(name: 'Meagan').id
)
Property.create(
  address: '9/1 Castlereagh St, Sydney',
  description: '$600/w
  1 car space
  Deluxe Studio Accommodation In Sydney
  Our well-appointed, fully furnished studio apartments are designed for comfort and practicality with a touch of luxury.
  The studios have opening windows to admire the Sydney views, a state of the art home entertainment system, microwave, kettle and Nespresso coffee machine.
  As a special touch, your minibar is stocked with a boutique beer from Sydney’s oldest pub, The Lord Nelson Brewery, as well as a premium beer and wine selection.
  While staying with us, why not check out our 24-hour, fully refurbished fitness centre with onsite personal trainers, as well as a sauna and heated pool.
  Ideal for: Business Travellers, Couples and Single Travellers

  Features include:
  Bathrobe and slippers
  Climate-controlled air conditioning
  Complimentary high-speed WiFi access
  Complimentary baby cot (available on request)
  Hair dryer
  In-room safe
  iPod docking sound system (iPhone 5 compatible)
  Iron and ironing board
  Key card access and privacy lock
  Malin+Goetz amenities
  Modern and well-equipped kitchenette
  Nespresso coffee machine
  Spacious work desk',
  image: 'https://sydney.frasershospitality.com/d/fssydney/media/Images/__thumbs_1050_567_crop/Studio-Deluxe-Room.jpg',
  location: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3312.903423442658!2d151.2075546154759!3d-33.86637972636508!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ae402d0159d7%3A0xedb7f77574c4d5d8!2s9%2F1+Castlereagh+St%2C+Sydney+NSW+2000!5e0!3m2!1sen!2sau!4v1564453949838!5m2!1sen!2sau',
  property_types_id: PropertyType.find_by(name: 'Studio').id,
  agents_id: Agent.find_by(name: 'Hobert').id
)
Property.create(
  address: '2/24 Marlo Road, Cronulla',
  description: '$950/w
  4 bedrooms/ 2 bathrooms/ 1 garage, Beachside Luxury
  This immaculately renovated four bedroom townhouse offers the ultimate in coastal luxury with impressive sleek designs. Set in a highly regarded boutique complex of only three and ideally located just a short stroll from cafes, shops and transport.
  Features include:
  - Gourmet kitchen with gas stainless steel appliances & breakfast bar
  - Generous open plan design with timber flooring throughout lounge & dining
  - Three double size bedrooms with built in wardrobes, and ceiling fans
  - Main bedroom with ensuite & walk-in wardrobe, main bathroom with bath
  - Additional fourth bedroom or study with private balcony
  - Internal laundry, single motorised garage with internal access
  - Entertaining terrace with built-in bench and outside shower',
  image: 'https://i2.au.reastatic.net/800x600/c27c31232d01dbd0c3e816edad759cb4654f685527db786ea0c04a3aebe26357/main.jpg',
  location: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3305.8476889181843!2d151.15148981548086!3d-34.04777793580206!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12c81a942408ad%3A0xb063531ba64810df!2s2%2F24+Marlo+Rd%2C+Cronulla+NSW+2230!5e0!3m2!1sen!2sau!4v1564452933069!5m2!1sen!2sau',
  property_types_id: PropertyType.find_by(name: 'Townhouse').id,
  agents_id: Agent.find_by(name: 'Meagan').id
)
Property.create(
  address: '28/149 Pyrmont Street',
  description: '$1100/w
  2 bedrooms/ 2 bathrooms/ 1 garage,
  Stunning harbour views
  The ultimate in luxury living, this exquisite apartment is the epitome of sophisticated contemporary design. Occupying a premier blue ribbon setting, the impressively well-proportioned interiors open to embrace spectacular uninterrupted views of the iconic Harbour.
  Features include:
  - Beautifully appointed with impeccable designer finishes
  - With remarkably spacious open plan entertaining areas
  - Drenched in morning sunlight, expansive BBQ balcony
  - Master has an ensuite, walk-in robe and stunning views
  - CaesarStone gas kitchen, and ducited air conditioning
  - Sauna, two pools, two tennis courts and two gymnasiums

  An award winning designer building that seamlessly showcases an ultra modern lifestyle within a historic community context, it is metres to harbourside parks, cafes, light rail transport and boutique shopping and a pleasant walk to the city.',
  image: 'https://i2.au.reastatic.net/800x600/bbe046997f98ae49d94210bd7ee706cf77446a1b5852aa6b2e509b66b7ffaaf6/main.jpg',
  location: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3312.8356219445245!2d151.18722831547606!3d-33.86812692645579!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ae348f671e13%3A0x8ab4e0c63e9d83c7!2s10F%2F5+Tambua+St%2C+Pyrmont+NSW+2009!5e0!3m2!1sen!2sau!4v1564454544130!5m2!1sen!2sau',
  property_types_id: PropertyType.find_by(name: 'House').id,
  agents_id: Agent.find_by(name: 'Hobert').id
)
