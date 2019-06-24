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
    adresse: 'Routes des Moulins 23, 1913 Saillon',
    telephone: '+41787114053'
  )

Panier.create!(
    user_id: 1,
    titre: 'Fruits frais du jardin',
    deadline: '2019-06-27 12:00'
  )
