#on appelle la gem faker
require 'faker'

#on détruit la base de donnée
User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all


#on crée 100 villes, utilisateurs, hashtag et gossips différents grâce à la boucles .times do, et à la gem faker
100.times do
  town = City.create(name: Faker::Name.first_name, zip_code: Faker::Number.between(from: 10000, to: 99999))
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, description: Faker::Company.bs, email: Faker::Internet.email, age: Faker::Number.between(from: 1, to: 100), cities_id: town.id)
  hashtag = Tag.create(title: "##{Faker::Lorem.word}")
  potin = Gossip.create(title: Faker::Lorem.word, content: Faker::Company.bs, users_id: user.id, tags_id: hashtag.id, cities_id: town.id)
end

#on crée un message privé avec un émetteur et un destinataire, et une ville car un utilisateur appartient à une ville
town = City.create(name: Faker::Name.first_name, zip_code: Faker::Number.between(from: 10000, to: 99999))
sender = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, description: Faker::Company.bs, email: Faker::Internet.email, age: Faker::Number.between(from: 1, to: 100), cities_id: town.id)
recipient = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, description: Faker::Company.bs, email: Faker::Internet.email, age: Faker::Number.between(from: 1, to: 100), cities_id: town.id)
themessage = PrivateMessage.create(content: Faker::Company.bs, sender_id: sender.id, recipient_id: recipient.id)