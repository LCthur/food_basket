# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Panier.destroy_all


User.create!(
    id: 1,
    email: 'loic.thurre@gmail.com',
    password: 'tototiti',
    nom: 'Thurre',
    prenom: 'Loïc',
    adresse: 'Renens',
    telephone: '+41787114053',
    latitude: 46.5349093,
    longitude: 6.5928442
  )

User.create!(
    id: 2,
    email: 'toto.thurre@gmail.com',
    password: 'tototiti',
    nom: 'titi',
    prenom: 'toto',
    adresse: 'Renens',
    telephone: '+41787114053',
    latitude: 46.5349093,
    longitude: 6.5928442
  )

Panier.create!(
    user_id: 1,
    titre: 'Fruits frais du jardin',
    deadline: '2019-06-27 12:00'
  )

Panier.create!(
    user_id: 2,
    titre: 'Légumes bios',
    deadline: '2019-07-27 12:00'
  )

