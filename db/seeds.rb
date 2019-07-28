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

Agent.create(name: 'John', phone: '0344 089 756', email: 'john@john.com')

Property.destroy_all
puts 'Creating property'

Property.create(
  address: '1/2-4 Pyrmont Street',
  description: 'House description',
  image: 'https://i2.au.reastatic.net/800x600/65120f63b60cbb89d4cbbf853945054ffed6d741f6f1164c517aac8e1677f548/main.jpg',
  location: 'https://goo.gl/maps/i4FtqJf7HFZPhm4d8',
  property_types_id: PropertyType.find_by(name: 'House').id,
  agents_id: Agent.find_by(name: 'John').id
)
