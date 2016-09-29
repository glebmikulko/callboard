# this file should contain all the record creation needed to seed the database with its default values.
# the data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# examples:
#
#   movies = movie.create([{ name: 'star wars' }, { name: 'lord of the rings' }])
#   character.create(name: 'luke', movie: movies.first)

# 50.times do
#   post_text = faker::hacker.noun
#   post.create(title: post_text, body: faker::lorem.paragraphs(rand(0..4)),
#               price: faker::commerce.price, status: [:on_moderation, :accepted, :rejected].sample,
#               image: faker::placeholdit.image("50x50", 'jpg', 'ffffff', '000', post_text))
# end
#
# 10.times do 
#   category.create(name: faker::music.instrument)
# end

Post.all.each do |post|
    category = Category.all.sample
    category.posts << post
end
