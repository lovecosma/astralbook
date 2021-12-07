# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

zodiac = Category.create(title: "Zodiac")
celests = Category.create(title: "Celestial Objects")
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
numbers = Category.create(title: "Numbers")


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

#moon phases
Correspondence.create(name: "New Moon", category_id: moon_phases.id)
Correspondence.create(name: "Waxing Crescent", category_id: moon_phases.id)
Correspondence.create(name: "First Quarter", category_id: moon_phases.id)
Correspondence.create(name: "Waxing Gibbous", category_id: moon_phases.id)
Correspondence.create(name: "Full Moon", category_id: moon_phases.id)
Correspondence.create(name: "Waning Gibbous", category_id: moon_phases.id)
Correspondence.create(name: "Last Quarter", category_id: moon_phases.id)
Correspondence.create(name: "Waning Crescent", category_id: moon_phases.id)

#seasons
Correspondence.create(name: "Summer", category_id: seasons.id)
Correspondence.create(name: "Spring", category_id: seasons.id)
Correspondence.create(name: "Winter", category_id: seasons.id)
Correspondence.create(name: "Autumn", category_id: seasons.id)

# months 
Correspondence.create(name: "January", category_id: full_moons.id)
Correspondence.create(name: "February", category_id: full_moons.id)
Correspondence.create(name: "March", category_id: full_moons.id)
Correspondence.create(name: "April", category_id: full_moons.id)
Correspondence.create(name: "May", category_id: full_moons.id)
Correspondence.create(name: "June", category_id: full_moons.id)
Correspondence.create(name: "July", category_id: full_moons.id)
Correspondence.create(name: "August", category_id: full_moons.id)
Correspondence.create(name: "September", category_id: full_moons.id)
Correspondence.create(name: "October", category_id: full_moons.id)
Correspondence.create(name: "November", category_id: full_moons.id)
Correspondence.create(name: "December", category_id: full_moons.id)


# days 
Correspondence.create(name: "Sunday", category_id: days.id)
Correspondence.create(name: "Monday", category_id: full_moons.id)
Correspondence.create(name: "Tuesday", category_id: full_moons.id)
Correspondence.create(name: "Wednesday", category_id: full_moons.id)
Correspondence.create(name: "Thursday", category_id: full_moons.id)
Correspondence.create(name: "Friday", category_id: full_moons.id)
Correspondence.create(name: "Saturday", category_id: full_moons.id)

#elements 

Correspondence.create(name: "Earth", category_id: elements.id)
Correspondence.create(name: "Water", category_id: elements.id)
Correspondence.create(name: "Wind", category_id: elements.id)
Correspondence.create(name: "Fire", category_id: elements.id)
Correspondence.create(name: "Ether", category_id: elements.id)

# directions

Correspondence.create(name: "North", category_id: directions.id)
Correspondence.create(name: "Northeast", category_id: directions.id)
Correspondence.create(name: "East", category_id: directions.id)
Correspondence.create(name: "Southeast", category_id: directions.id)
Correspondence.create(name: "South", category_id: directions.id)
Correspondence.create(name: "Southwest", category_id: directions.id)
Correspondence.create(name: "West", category_id: directions.id)
Correspondence.create(name: "Northwest", category_id: directions.id)

#colors

Correspondence.create(name: "Red", category_id: colors.id)
Correspondence.create(name: "Orange", category_id: colors.id)
Correspondence.create(name: "Yellow", category_id: colors.id)
Correspondence.create(name: "Green", category_id: colors.id)
Correspondence.create(name: "Blue", category_id: colors.id)
Correspondence.create(name: "Indigo", category_id: colors.id)
Correspondence.create(name: "Violet", category_id: colors.id)
Correspondence.create(name: "Purple", category_id: colors.id)

# abundance = Intention.create(name: "Abundance", desc: "To Attract, Perpetuate")

# virgo = Correspondence.create(name: "Virgo")


# zodiac.correspondences << virgo
# celest.correspondences << jupiter

# abundance.correspondences << virgo
# abundance.correspondences << jupiter

puts "Seeded."

