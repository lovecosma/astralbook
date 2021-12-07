# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

zodiac = Category.create(title: "Zodiac")
celests = Category.create(title: "Celestial Objects")
numbers = Category.create(title: "Numbers")
moon_phases = Category.create(title: "Moon Phases")
seasons = Category.create(title: "Seasons")
full_moons = Category.create(title: "Full Moons")
days = Category.create(title: "Days")
ogham = Category.create(title: "Ogham")
runes = Category.create(title: "Runes")
elements = Category.create(title: "Elements")
directions = Category.create(title: "Directions")
colors = Category.create(title: "Colors")
chakras = Category.create(title: "Chakras")
plants = Category.create(title: "Plants")
trees = Category.create(title: "Trees")
herbs = Category.create(title: "Herbs ")
minerals = Category.create(title: "Minerals")
sea = Category.create(title: "Sea")
goddesses = Category.create(title: "Goddesses")
gods = Category.create(title: "Gods")
animals = Category.create(title: "Animals")
marine_life = Category.create(title: "Marine Life")
reptiles = Category.create(title: "Reptiles")
birds = Category.create(title: "Birds")
critters = Category.create(title: "Critters")
mythical = Category.create(title: "Mythical")
time_of_day = Category.create(title: "Time of Day")
tarot = Category.create(title: "Tarot")


# zodiac
Correspondence.create(name: "Aries", category_id: zodiac.id)
Correspondence.create(name: "Taurus", category_id: zodiac.id)
Correspondence.create(name: "Gemini", category_id: zodiac.id)
Correspondence.create(name: "Cancer", category_id: zodiac.id)
Correspondence.create(name: "Leo", category_id: zodiac.id)
Correspondence.create(name: "Virgo", category_id: zodiac.id)
Correspondence.create(name: "Libra", category_id: zodiac.id)
Correspondence.create(name: "Scorpio", category_id: zodiac.id)
Correspondence.create(name: "Sagittarius", category_id: zodiac.id)
Correspondence.create(name: "Capricorn", category_id: zodiac.id)
Correspondence.create(name: "Aquarius", category_id: zodiac.id)
Correspondence.create(name: "Pisces", category_id: zodiac.id)


# celestisal objects
Correspondence.create(name: "Jupiter", category_id: celests.id)
Correspondence.create(name: "Sun", category_id: celests.id)
Correspondence.create(name: "Moon", category_id: celests.id)
Correspondence.create(name: "Neptune", category_id: celests.id)
Correspondence.create(name: "Uranus", category_id: celests.id)
Correspondence.create(name: "Mercury", category_id: celests.id)
Correspondence.create(name: "Saturn", category_id: celests.id)
Correspondence.create(name: "Mars", category_id: celests.id)
Correspondence.create(name: "Venus", category_id: celests.id)
Correspondence.create(name: "Pluto", category_id: celests.id)

#


# abundance = Intention.create(name: "Abundance", desc: "To Attract, Perpetuate")

# virgo = Correspondence.create(name: "Virgo")


# zodiac.correspondences << virgo
# celest.correspondences << jupiter

# abundance.correspondences << virgo
# abundance.correspondences << jupiter

puts "Seeded."

