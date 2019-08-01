# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts 'Creating user'

User.create(name: 'admin', password: 'admin')

PropertyType.destroy_all
puts 'Creating property type'

PropertyType.create(name: 'House')
PropertyType.create(name: 'Apartment')
PropertyType.create(name: 'Studio')
PropertyType.create(name: 'Townhouse')

Agent.destroy_all
puts 'Creating agents'

Agent.create(image: 'https://user-images.githubusercontent.com/39023533/62134163-5a328b80-b323-11e9-8af9-5c1514947758.png', name: 'Hobert', phone: '0344 089 756', email: 'hobert@home.com')
Agent.create(image: 'https://www.fmrealty.com/photos/agent/R21833.jpg', name: 'Meagan', phone: '0344 079 706', email: 'meagan@home.com')

Property.destroy_all
puts 'Creating property'

Property.create(
  address: '1/2-4 Pyrmont Street, Pyrmont, NSW, 2000',
  bedroom: 3,
  bathroom: 2,
  car_space: 1,
  price: '$ 1125/w Bond: $4500',
  description:
  '<p>This terrace presents an exciting opportunity to rent a unique property in a premium Pyrmont setting. This residence has been renovated throughout and provides excellent scope for families.</p>
  <p>Features include:</p>
  <p>- Well-appointed throughout and presented in great condition</p>
  <p>- Two-level floorplan that features generous upstairs bedrooms</p>
  <p>- Well-equipped open gas kitchen flowing to outdoor area, full bathroom</p>
  <p>- Private outdoor areas include a courtyard garden, patio and terrace</p>
  <p>- Ready to live in or lease out immediately with scope to update</p>
  <p>- Rarely does an opportunity arise that presents a lifestyle of such value, versatility and prime positioning with Pyrmont\'s host of cafes, shopping and the light rail station just a short stroll away.</p>
  <p>Please use the \'contact agent/email\' to check availability for your preferred dates by email.</p>',
  image: 'https://i2.au.reastatic.net/800x600/65120f63b60cbb89d4cbbf853945054ffed6d741f6f1164c517aac8e1677f548/main.jpg',
  location: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3312.477210830517!2d151.19715921547626!3d-33.87736162693527!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ae2544c9d017%3A0x490ff8c094b625d6!2s1+Pyrmont+St%2C+Ultimo+NSW+2007!5e0!3m2!1sen!2sau!4v1564449456915!5m2!1sen!2sau',
  property_types_id: PropertyType.find_by(name: 'House').id,
  agents_id: Agent.find_by(name: 'Hobert').id
)
Property.create(
  address: '2A McDonald St, Cronulla, NSW, 2230',
  bedroom: 3,
  bathroom: 2,
  car_space: 2,
  price: '$ 3773/w Bond: $ 15092',
  description: '
  <p>Fully Furnished, Cronulla Ocean View Apartment</p>
  <p>Wake up to spectacular sunrises.</p>
  <p>Every day can be as relaxed or active as you want!</p>
  <p>Enjoy outstanding foreshore, promenade walks along the Esplanade footpath stretching from Bass and Flinders
  monument at the mouth of Port Hacking to Wanda surf Life Saving Club and passing by the Norfolk Island pine trees
  featured in some of the view photos taken from the apartment.Located next to Cronulla
  (South) Surf Life Saving Club and within easy walking to Cronulla\'s shops, cinema, library, and clubs, this fully
  renovated apartment with top floor, penthouse position, will be your home to explore the area\'s
  abundance of top class restaurants, cafes, beaches and other natural attractions.</p>
  <p>This spacious, open-plan, ocean view residence is one of only 2 apartments occupying the top
  floor with easy access up a couple of flights of stairs (building entry is at level 1).</p>
  <p>Features include:</p>
  <p>- Spectacular ocean view</p>
  <p>- Spacious living area</p>
  <p>- Covered balcony from the living area</p>
  <p>- Air conditioning</p>
  <p>- Flat-screen TVs</p>
  <p>- Internal laundry facility</p>
  <p>- Single lock-up garage with auto door</pv>
  <p>- Off-street visitor parking</p>
  <p>- Close to beach, shops and public transport.</p>
  <p>Linen, towels, crockery &amp; cutlery all supplied</p>
  <p>Sleeps 4 people in 1 queen size double bed, 1 single bed &amp; 1 single trundle bed.</p>

  <p>Catch the Ferry to the sleepy village of Bundeena and its smaller neighbour, Maianbar,
  unspoilt hideaways that draw many visitors eager to enjoy their timeless charms.</p>
  <p>Visit the Kurnell Peninsula it was here, in 1770, that Captain James Cook first set
  foot on Australia, claiming the continent for Britain.</p>
  <p>Explore Sydney Tram Museum. Bush walk through the nations oldest park the Royal National...show more Park. There are plenty of attractions under the water for diving or snorkelling fans.</p>
  <p>Lean To Surf at Cronulla Beach.Kayak the Port Hacking and Woronora Rivers. With horse riding, ten pin bowling, rock climbing, children/s indoor play areas, museums and galleries,
  Leisure centres, cinemas and Golf courses near by, it is sure to keep you entertained from start to finish.</p>
  <p>Please use the \'contact agent/email\' to check availability for your preferred dates by email.</p>',
  image: 'https://www.realestate.com.au/blog/images/1600x1600-fit,progressive/2018/09/03124057/capi_85c56dd16de2bb27937d2d9bf709348a_919959291b91444e3973d182358d49af.jpeg',
  location: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3305.6735185098855!2d151.15422474253538!3d-34.05224498514759!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12c81104c664e5%3A0xe76f79cae4610f77!2s2A+McDonald+St%2C+Cronulla+NSW+2230!5e0!3m2!1sen!2sau!4v1564450362609!5m2!1sen!2sau',
  property_types_id: PropertyType.find_by(name: 'Apartment').id,
  agents_id: Agent.find_by(name: 'Meagan').id
)
Property.create(
  address: '9/1 Castlereagh St, Sydney, NSW, 2000',
  price: '$ 600/w Bond: $ 2400',
  bedroom: 0,
  bathroom: 0,
  car_space: 1,
  description:
  '<p>Deluxe Studio Accommodation In Sydney</p>
  <p>Our well-appointed, fully furnished studio apartments are designed for comfort and practicality with a touch of luxury.</p>
  <p>The studios have opening windows to admire the Sydney views, a state of the art home entertainment system, microwave,
  kettle and Nespresso coffee machine. As a special touch, your minibar is stocked with a boutique beer from Sydney&rsquo;s oldest pub, The Lord Nelson Brewery,
  as well as a premium beer and wine selection.While staying with us, why not check out our 24-hour, fully refurbished fitness
  centre with onsite personal trainers, as well as a sauna and heated pool.</p>
  <p>Features include:</p>
  <p>- Bathrobe and slippers</p>
  <p>- Climate-controlled air conditioning</p>
  <p>- Complimentary high-speed WiFi access</p>
  <p>- Complimentary baby cot (available on request)</p>
  <p>- Hairdryer</p>
  <p>- In-room safe</p>
  <p>- iPod docking sound system</p>
  <p>- Iron and ironing board</p>
  <p>- Key card access and privacy lock</p>
  <p>- Malin+Goetz amenities</p>
  <p>- Modern and well-equipped kitchenette</p>
  <p>- Nespresso coffee machine</p>
  <p>- Spacious work desk</p>
  <p>Ideal for: Business Travellers, Couples and Single Travellers</p>
  <p>Please use the \'contact agent/email\' to check availability for your preferred dates by email.</p>',
  image: 'https://sydney.frasershospitality.com/d/fssydney/media/Images/__thumbs_1050_567_crop/Studio-Deluxe-Room.jpg',
  location: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3312.903423442658!2d151.2075546154759!3d-33.86637972636508!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ae402d0159d7%3A0xedb7f77574c4d5d8!2s9%2F1+Castlereagh+St%2C+Sydney+NSW+2000!5e0!3m2!1sen!2sau!4v1564453949838!5m2!1sen!2sau',
  property_types_id: PropertyType.find_by(name: 'Studio').id,
  agents_id: Agent.find_by(name: 'Hobert').id
)
Property.create(
  address: '2/24 Marlo Road, Cronulla, NSW, 2230',
  price: '$ 950/w Bond: $ 3800',
  bedroom: 4,
  bathroom: 2,
  car_space: 1,
  description: ' <p>Beachside Luxury</p>
  <p>This immaculately renovated four bedroom townhouse offers the ultimate in coastal luxury with impressive sleek designs. Set in a highly regarded boutique complex of only three and ideally located just a short stroll from cafes, shops, and transport.</p>
  <p>Features include:</p>
  <p>- Gourmet kitchen with gas stainless steel appliances &amp; breakfast bar</p>
  <p>- Generous open plan design with timber flooring throughout lounge &amp; dining</p>
  <p>- Three double size bedrooms with built-in wardrobes, and ceiling fans</p>
  <p>- Main bedroom with ensuite &amp; walk-in wardrobe, main bathroom with bath</p>
  <p>- Additional fourth bedroom or study with private balcony</p>
  <p>- Internal laundry, single motorised garage with internal access</p>
  <p>- Entertaining terrace with built-in bench and outside shower</p>
  <p>Please use the \'contact agent/email\' to check availability for your preferred dates by email.</p>',
  image: 'https://i2.au.reastatic.net/800x600/f72cea3cc252d32169f863f5dec11af19c5469d3dd65f189a5bc28e75757bd59/main.jpg',
  location: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3305.8476889181843!2d151.15148981548086!3d-34.04777793580206!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12c81a942408ad%3A0xb063531ba64810df!2s2%2F24+Marlo+Rd%2C+Cronulla+NSW+2230!5e0!3m2!1sen!2sau!4v1564452933069!5m2!1sen!2sau',
  property_types_id: PropertyType.find_by(name: 'Townhouse').id,
  agents_id: Agent.find_by(name: 'Meagan').id
)
Property.create(
  address: '28/149 Pyrmont Street, Pyrmont, NSW, 2009',
  price: '$ 1100/w Bond: $ 4400',
  bedroom: 2,
  bathroom: 2,
  car_space: 1,
  description: ' <p>Stunning harbour views</p>
  <p>The ultimate in luxury living, this exquisite apartment is the epitome of sophisticated contemporary design.
  Occupying a premier blue ribbon setting, the impressively well-proportioned interiors open to embrace spectacular
  uninterrupted views of the iconic Harbour.</p>
  <p>Features include:</p>
  <p>- Beautifully appointed with impeccable designer finishes</p>
  <p>- With remarkably spacious open plan entertaining areas</p>
  <p>- Drenched in the morning sunlight, expansive BBQ balcony</p>
  <p>- Master has an ensuite, walk-in robe and stunning views</p>
  <p>- CaesarStone gas kitchen, and ducted air conditioning</p>
  <p>- Sauna, two pools, two tennis courts, and two gymnasiums</p>
  <p>An award winning designer building that seamlessly showcases an ultra modern lifestyle within a historic community
  context, it is metres to harbourside parks, cafes, light rail transport, and boutique shopping and a pleasant walk to the city.</p>
  <p>Please use the \'contact agent/email\' to check availability for your preferred dates by email.</p>',
  image: 'https://i2.au.reastatic.net/800x600/bbe046997f98ae49d94210bd7ee706cf77446a1b5852aa6b2e509b66b7ffaaf6/main.jpg',
  location: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3312.8356219445245!2d151.18722831547606!3d-33.86812692645579!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ae348f671e13%3A0x8ab4e0c63e9d83c7!2s10F%2F5+Tambua+St%2C+Pyrmont+NSW+2009!5e0!3m2!1sen!2sau!4v1564454544130!5m2!1sen!2sau',
  property_types_id: PropertyType.find_by(name: 'Apartment').id,
  agents_id: Agent.find_by(name: 'Hobert').id
)
