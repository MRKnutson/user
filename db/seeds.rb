# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "seeds file running"

require "faker"
Person.destroy_all



15.times do
    Person.create(
    full_name: Faker::Movies::HarryPotter.character,
    age: Faker::Number.within(range: 1..60),
    gender: Faker::Movies::HarryPotter.spell,
    )
    end
