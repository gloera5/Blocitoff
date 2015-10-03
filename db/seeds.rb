require 'faker'

5.times do
   user = User.new(
     name:     Faker::Name.name,
     email:    Faker::Internet.email,
     password: Faker::Lorem.characters(10)
   )
   user.skip_confirmation!
   user.save!
 end
 users = User.all

5.times do
  Item.create!(
     name: Faker::Lorem.sentence,
   )
 end
 items = Item.all

 puts "Seed finished"
 puts "#{User.count} posts created"
 puts "#{Item.count} comments created"