# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Camper.create!(name:    "Empty Slot"  )

Archery.create!
Riflery.create!
Canoeing.create!
Baking.create!
Camping.create!
Rock.create!
Fishing.create!
Hiking.create!
Pottery.create!
Art.create!
Percussion.create!
Craft.create!
Game.create!
Guitar.create!
Choir.create!
Writing.create!
Weaving.create!
Notdance.create!
Painting.create!
Sign.create!
Spanish.create!
Talking.create!
Un.create!

Schedule.create!

=begin
99.times do |n|
  num = (n % 7) + 1
  num2 = ((num + 1) % 7) + 1
  num3 = ((num2 + 1) % 7) + 1
  num4 = ((num3 + 1) % 7) + 1
  num5 = ((num4 + 1) % 7) + 1
  num6 = ((num5 + 1) % 7) + 1
  num7 = ((num6 + 1) % 7) + 1
  name  = Faker::Name.name
  Camper.create!(name:       name,
                 archery:    num,
                 riflery:    num2,
                 camping:    num3,
                 crafts:     num4,
                 arts:      num5,
                 percussion: num6,
                 hiking:     num7)
end
=end
