# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

20.times do
    User.create(
        name: Faker::Name
        image: 'https://instagram.flhr3-1.fna.fbcdn.net/vp/f07e6577ddc0a362615725e2bd17352e/5E63250A/t51.2885-15/sh0.08/e35/s750x750/73381103_2560495177529711_3296448135674134194_n.jpg?_nc_ht=instagram.flhr3-1.fna.fbcdn.net&_nc_cat=111'
    )
end