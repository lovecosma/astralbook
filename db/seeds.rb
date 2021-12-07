# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

zodiac = Category.create(title: "Zodiac")
celest = Category.create(title: "Celestial Objects")
num = Category.create(title: "Number")

abundance = Intention.create(name: "Abundance", desc: "To Attract, Perpetuate")

virgo = Correspondence.create(name: "Virgo")

