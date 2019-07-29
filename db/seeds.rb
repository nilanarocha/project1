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
  address: '1/2-4 Pyrmont Street, Pyrmont',
  description: 'House description',
  image: 'https://i2.au.reastatic.net/800x600/65120f63b60cbb89d4cbbf853945054ffed6d741f6f1164c517aac8e1677f548/main.jpg',
  location: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3312.7929279995215!2d151.19068531521017!3d-33.869227080656174!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ae36a84a6ef1%3A0x11bdd9b7c6c0ede!2s52+Mount+St%2C+Pyrmont+NSW+2009!5e0!3m2!1sen!2sau!4v1564390732754!5m2!1sen!2sau',
  property_types_id: PropertyType.find_by(name: 'House').id,
  agents_id: Agent.find_by(name: 'John').id
)
Property.create(
  address: '1/2-4 Nerang Road, Cronulla',
  description: 'Apartment description',
  image: 'https://i2.au.reastatic.net/800x600/65120f63b60cbb89d4cbbf853945054ffed6d741f6f1164c517aac8e1677f548/main.jpg',
  location: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3312.7929279995215!2d151.19068531521017!3d-33.869227080656174!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ae36a84a6ef1%3A0x11bdd9b7c6c0ede!2s52+Mount+St%2C+Pyrmont+NSW+2009!5e0!3m2!1sen!2sau!4v1564390732754!5m2!1sen!2sau',
  property_types_id: PropertyType.find_by(name: 'Apartment').id,
  agents_id: Agent.find_by(name: 'John').id
)
Property.create(
  address: '45/209 Harris Street, Pyrmont',
  description: 'House description',
  image: 'https://i2.au.reastatic.net/800x600/65120f63b60cbb89d4cbbf853945054ffed6d741f6f1164c517aac8e1677f548/main.jpg',
  location: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3312.7929279995215!2d151.19068531521017!3d-33.869227080656174!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ae36a84a6ef1%3A0x11bdd9b7c6c0ede!2s52+Mount+St%2C+Pyrmont+NSW+2009!5e0!3m2!1sen!2sau!4v1564390732754!5m2!1sen!2sau',
  property_types_id: PropertyType.find_by(name: 'House').id,
  agents_id: Agent.find_by(name: 'John').id
)
Property.create(
  address: '1/2-4 Ocean Street, Cronulla',
  description: 'House description',
  image: 'https://i2.au.reastatic.net/800x600/65120f63b60cbb89d4cbbf853945054ffed6d741f6f1164c517aac8e1677f548/main.jpg',
  location: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3312.7929279995215!2d151.19068531521017!3d-33.869227080656174!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ae36a84a6ef1%3A0x11bdd9b7c6c0ede!2s52+Mount+St%2C+Pyrmont+NSW+2009!5e0!3m2!1sen!2sau!4v1564390732754!5m2!1sen!2sau',
  property_types_id: PropertyType.find_by(name: 'House').id,
  agents_id: Agent.find_by(name: 'John').id
)
Property.create(
  address: '28/149 Pyrmont Street',
  description: 'House description',
  image: 'https://i2.au.reastatic.net/800x600/65120f63b60cbb89d4cbbf853945054ffed6d741f6f1164c517aac8e1677f548/main.jpg',
  location: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3312.7929279995215!2d151.19068531521017!3d-33.869227080656174!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ae36a84a6ef1%3A0x11bdd9b7c6c0ede!2s52+Mount+St%2C+Pyrmont+NSW+2009!5e0!3m2!1sen!2sau!4v1564390732754!5m2!1sen!2sau',
  property_types_id: PropertyType.find_by(name: 'House').id,
  agents_id: Agent.find_by(name: 'John').id
)
