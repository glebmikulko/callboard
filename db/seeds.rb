# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  post_text = Faker::Hacker.noun
  Post.create(title: post_text, body: Faker::Lorem.paragraphs(rand(0..4)),
              price: Faker::Commerce.price, status: [:on_moderation, :accepted, :rejected].sample,
              image: Faker::Placeholdit.image("50x50", 'jpg', 'ffffff', '000', post_text))
end
