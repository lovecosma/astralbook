# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# zodiac = Category.create(title: "Zodiac")
# celests = Category.create(title: "Celestial Objects")
# moon_phases = Category.create(title: "Moon Phases")
# seasons = Category.create(title: "Seasons")
# full_moons = Category.create(title: "Full Moons")
# days = Category.create(title: "Days")
# ogham = Category.create(title: "Ogham")
# runes = Category.create(title: "Runes")
# elements = Category.create(title: "Elements")
# directions = Category.create(title: "Directions")
# colors = Category.create(title: "Colors")
# chakras = Category.create(title: "Chakras")
# plants = Category.create(title: "Plants")
# trees = Category.create(title: "Trees")
# herbs = Category.create(title: "Herbs ")
# minerals = Category.create(title: "Minerals")
# sea = Category.create(title: "Sea")
# goddesses = Category.create(title: "Goddesses")
# gods = Category.create(title: "Gods")
# animals = Category.create(title: "Animals")
# marine_life = Category.create(title: "Marine Life")
# reptiles = Category.create(title: "Reptiles")
# birds = Category.create(title: "Birds")
# critters = Category.create(title: "Critters")
# mythical = Category.create(title: "Mythical")
# time_of_day = Category.create(title: "Time of Day")
# tarot = Category.create(title: "Tarot")
# numbers = Category.create(title: "Numbers")


# # zodiac
# Correspondence.create(name: "Aries", category_id: zodiac.id)
# Correspondence.create(name: "Taurus", category_id: zodiac.id)
# Correspondence.create(name: "Gemini", category_id: zodiac.id)
# Correspondence.create(name: "Cancer", category_id: zodiac.id)
# Correspondence.create(name: "Leo", category_id: zodiac.id)
# Correspondence.create(name: "Virgo", category_id: zodiac.id)
# Correspondence.create(name: "Libra", category_id: zodiac.id)
# Correspondence.create(name: "Scorpio", category_id: zodiac.id)
# Correspondence.create(name: "Sagittarius", category_id: zodiac.id)
# Correspondence.create(name: "Capricorn", category_id: zodiac.id)
# Correspondence.create(name: "Aquarius", category_id: zodiac.id)
# Correspondence.create(name: "Pisces", category_id: zodiac.id)


# # celestisal objects
# Correspondence.create(name: "Jupiter", category_id: celests.id)
# Correspondence.create(name: "Sun", category_id: celests.id)
# Correspondence.create(name: "Moon", category_id: celests.id)
# Correspondence.create(name: "Neptune", category_id: celests.id)
# Correspondence.create(name: "Uranus", category_id: celests.id)
# Correspondence.create(name: "Mercury", category_id: celests.id)
# Correspondence.create(name: "Saturn", category_id: celests.id)
# Correspondence.create(name: "Mars", category_id: celests.id)
# Correspondence.create(name: "Venus", category_id: celests.id)
# Correspondence.create(name: "Pluto", category_id: celests.id)
# Correspondence.create(name: "Earth", category_id: celests.id)

# # moon phases

# Correspondence.create(name: "New Moon", category_id: moon_phases.id)
# Correspondence.create(name: "Waxing Crescent", category_id: moon_phases.id)
# Correspondence.create(name: "First Quarter", category_id: moon_phases.id)
# Correspondence.create(name: "Waxing Gibbous", category_id: moon_phases.id)
# Correspondence.create(name: "Full Moon", category_id: moon_phases.id)
# Correspondence.create(name: "Waning Gibbous", category_id: moon_phases.id)
# Correspondence.create(name: "Last Quarter", category_id: moon_phases.id)
# Correspondence.create(name: "Waning Crescent", category_id: moon_phases.id)

# # seasons

# Correspondence.create(name: "Summer", category_id: seasons.id)
# Correspondence.create(name: "Spring", category_id: seasons.id)
# Correspondence.create(name: "Winter", category_id: seasons.id)
# Correspondence.create(name: "Autumn", category_id: seasons.id)

# # months 

# Correspondence.create(name: "January", category_id: full_moons.id)
# Correspondence.create(name: "February", category_id: full_moons.id)
# Correspondence.create(name: "March", category_id: full_moons.id)
# Correspondence.create(name: "April", category_id: full_moons.id)
# Correspondence.create(name: "May", category_id: full_moons.id)
# Correspondence.create(name: "June", category_id: full_moons.id)
# Correspondence.create(name: "July", category_id: full_moons.id)
# Correspondence.create(name: "August", category_id: full_moons.id)
# Correspondence.create(name: "September", category_id: full_moons.id)
# Correspondence.create(name: "October", category_id: full_moons.id)
# Correspondence.create(name: "November", category_id: full_moons.id)
# Correspondence.create(name: "December", category_id: full_moons.id)


# # days 

# Correspondence.create(name: "Sunday", category_id: days.id)
# Correspondence.create(name: "Monday", category_id: days.id)
# Correspondence.create(name: "Tuesday", category_id: days.id)
# Correspondence.create(name: "Wednesday", category_id: days.id)
# Correspondence.create(name: "Thursday", category_id: days.id)
# Correspondence.create(name: "Friday", category_id: days.id)
# Correspondence.create(name: "Saturday", category_id: days.id)

# # elements 

# Correspondence.create(name: "Earth", category_id: elements.id)
# Correspondence.create(name: "Water", category_id: elements.id)
# Correspondence.create(name: "Wind", category_id: elements.id)
# Correspondence.create(name: "Fire", category_id: elements.id)
# Correspondence.create(name: "Ether", category_id: elements.id)

# # directions

# Correspondence.create(name: "North", category_id: directions.id)
# Correspondence.create(name: "Northeast", category_id: directions.id)
# Correspondence.create(name: "East", category_id: directions.id)
# Correspondence.create(name: "Southeast", category_id: directions.id)
# Correspondence.create(name: "South", category_id: directions.id)
# Correspondence.create(name: "Southwest", category_id: directions.id)
# Correspondence.create(name: "West", category_id: directions.id)
# Correspondence.create(name: "Northwest", category_id: directions.id)

# # colors

# Correspondence.create(name: "Red", category_id: colors.id)
# Correspondence.create(name: "Orange (color)", category_id: colors.id)
# Correspondence.create(name: "Yellow", category_id: colors.id)
# Correspondence.create(name: "Light Green", category_id: colors.id)
# Correspondence.create(name: "Green", category_id: colors.id)
# Correspondence.create(name: "Dark Green", category_id: colors.id)
# Correspondence.create(name: "Light Blue", category_id: colors.id)
# Correspondence.create(name: "Blue", category_id: colors.id)
# Correspondence.create(name: "Indigo", category_id: colors.id)
# Correspondence.create(name: "Violet (color)", category_id: colors.id)
# Correspondence.create(name: "Purple", category_id: colors.id)
# Correspondence.create(name: "Black", category_id: colors.id)
# Correspondence.create(name: "White", category_id: colors.id)
# Correspondence.create(name: "Silver (color)", category_id: colors.id)
# Correspondence.create(name: "Brown", category_id: colors.id)
# Correspondence.create(name: "Gold", category_id: colors.id)
# Correspondence.create(name: "Pink", category_id: colors.id)
# Correspondence.create(name: "Rose (color)", category_id: colors.id)
# Correspondence.create(name: "Peach (color)", category_id: colors.id)
# Correspondence.create(name: "Gray", category_id: colors.id)
# Correspondence.create(name: "Turquoise", category_id: colors.id)
# Correspondence.create(name: "Copper (color)", category_id: colors.id)

#  # ogham

# Correspondence.create(name: "Ruis", category_id: ogham.id) 
# Correspondence.create(name: "Luis", category_id: ogham.id) 
# Correspondence.create(name: "Ngetal", category_id: ogham.id)
# Correspondence.create(name: "Saille", category_id: ogham.id) 
# Correspondence.create(name: "Tinne", category_id: ogham.id) 
# Correspondence.create(name: "Beithe", category_id: ogham.id) 

# # runes

# Correspondence.create(name: "Feoh", category_id: ogham.id) 
# Correspondence.create(name: "Jera", category_id: ogham.id) 
# Correspondence.create(name: "Beorc", category_id: ogham.id) 
# Correspondence.create(name: "Dag", category_id: ogham.id) 

# # chakras

# Correspondence.create(name: "Root", category_id: chakras.id) 
# Correspondence.create(name: "Sacral", category_id: chakras.id) 
# Correspondence.create(name: "Solar Plexus", category_id: chakras.id) 
# Correspondence.create(name: "Heart", category_id: chakras.id) 
# Correspondence.create(name: "Throat", category_id: chakras.id) 
# Correspondence.create(name: "Third Eye", category_id: chakras.id) 
# Correspondence.create(name: "Crown", category_id: chakras.id) 

# # plants

# Correspondence.create(name: "Grain", category_id: plants.id) 
# Correspondence.create(name: "Myrrh", category_id: plants.id)  
# Correspondence.create(name: "Cinnamon", category_id: plants.id)  
# Correspondence.create(name: "Corn Grain", category_id: plants.id) 
# Correspondence.create(name: "Reed", category_id: plants.id) 
# Correspondence.create(name: "Thistle", category_id: plants.id)  
# Correspondence.create(name: "Ginseng", category_id: plants.id)  
# Correspondence.create(name: "Mistletoe", category_id: plants.id)  
# Correspondence.create(name: "Patchouli", category_id: plants.id)  
# Correspondence.create(name: "Sandalwood", category_id: plants.id)  
# Correspondence.create(name: "Aloe", category_id: plants.id)  
# Correspondence.create(name: "Cowslip", category_id: plants.id)  
# Correspondence.create(name: "Lotus", category_id: plants.id)  
# Correspondence.create(name: "Wormwood", category_id: plants.id)  
# Correspondence.create(name: "All plants used for food, flavorings, healing", category_id: plants.id)  
# Correspondence.create(name: "Saffron", category_id: plants.id)  
# Correspondence.create(name: "Deer’s Tongue", category_id: plants.id)  
# Correspondence.create(name: "Mullein", category_id: plants.id)  
# Correspondence.create(name: "Betony", category_id: plants.id)  
# Correspondence.create(name: "Frankincense", category_id: plants.id)  
# Correspondence.create(name: "Belladonna", category_id: plants.id)  
# Correspondence.create(name: "Cinquefoil", category_id: plants.id)  
# Correspondence.create(name: "Dittany", category_id: plants.id)  
# Correspondence.create(name: "Galangal", category_id: plants.id)  
# Correspondence.create(name: "Ginger", category_id: plants.id)  
# Correspondence.create(name: "Henbane", category_id: plants.id)  
# Correspondence.create(name: "Mandrake", category_id: plants.id)  
# Correspondence.create(name: "Orris Root", category_id: plants.id)  
# Correspondence.create(name: "Thornapple", category_id: plants.id)  
# Correspondence.create(name: "Bloodroot", category_id: plants.id)  
# Correspondence.create(name: "Allspice", category_id: plants.id)  
# Correspondence.create(name: "Clove", category_id: plants.id)  
# Correspondence.create(name: "High John", category_id: plants.id)  
# Correspondence.create(name: "Spikenard", category_id: plants.id)  
# Correspondence.create(name: "Vanilla", category_id: plants.id)  
# Correspondence.create(name: "Anise", category_id: plants.id)  
# Correspondence.create(name: "Flax", category_id: plants.id)  
# Correspondence.create(name: "Lady’s Slipper", category_id: plants.id) 
# Correspondence.create(name: "Nutmeg", category_id: plants.id)  
# Correspondence.create(name: "Star Anise", category_id: plants.id)  
# Correspondence.create(name: "Mushroom", category_id: plants.id)  
# Correspondence.create(name: "Black Cohosh", category_id: plants.id) 
# Correspondence.create(name: "Burdock", category_id: plants.id)  
# Correspondence.create(name: "Meadowsweet", category_id: plants.id)  
# Correspondence.create(name: "Cumin", category_id: plants.id) 
# Correspondence.create(name: "Asafoetida", category_id: plants.id)  
# Correspondence.create(name: "Fairy Wand", category_id: plants.id) 
# Correspondence.create(name: "Horehound", category_id: plants.id)  
# Correspondence.create(name: "Nettle", category_id: plants.id)  
# Correspondence.create(name: "Pepper", category_id: plants.id)  
# Correspondence.create(name: "Goldenrod", category_id: plants.id)  
# Correspondence.create(name: "Black Pepper", category_id: plants.id) 
# Correspondence.create(name: "Bamboo", category_id: plants.id) 

# # minerals

# Correspondence.create(name: "Tree Agate", category_id: minerals.id) 
# Correspondence.create(name: "Apatite", category_id: minerals.id) 
# Correspondence.create(name: "Aventurine", category_id: minerals.id) 
# Correspondence.create(name: "Bloodstone", category_id: minerals.id) 
# Correspondence.create(name: "Chrysoberyl", category_id: minerals.id) 
# Correspondence.create(name: "Chrysoprase", category_id: minerals.id) 
# Correspondence.create(name: "Citrine", category_id: minerals.id) 
# Correspondence.create(name: "Dioptase", category_id: minerals.id) 
# Correspondence.create(name: "Jade", category_id: minerals.id) 
# Correspondence.create(name: "Malachite", category_id: minerals.id) 
# Correspondence.create(name: "Moss Agate", category_id: minerals.id) 
# Correspondence.create(name: "Peridot", category_id: minerals.id) 
# Correspondence.create(name: "Rhodochrosite", category_id: minerals.id) 
# Correspondence.create(name: "Quartz", category_id: minerals.id) 
# Correspondence.create(name: "Salt", category_id: minerals.id) 
# Correspondence.create(name: "Smoky", category_id: minerals.id) 
# Correspondence.create(name: "Quartz", category_id: minerals.id) 
# Correspondence.create(name: "Tiger’s Eye", category_id: minerals.id) 
# Correspondence.create(name: "Topaz", category_id: minerals.id) 
# Correspondence.create(name: "Green Tourmaline", category_id: minerals.id) 
# Correspondence.create(name: "Zircon", category_id: minerals.id) 
# Correspondence.create(name: "Angelite", category_id: minerals.id)  
# Correspondence.create(name: "Aragonite", category_id: minerals.id)  
# Correspondence.create(name: "Beryl", category_id: minerals.id)  
# Correspondence.create(name: "Larimar", category_id: minerals.id)  
# Correspondence.create(name: "Rose Quartz", category_id: minerals.id)  
# Correspondence.create(name: "Ruby", category_id: minerals.id)  
# Correspondence.create(name: "Green Zircon", category_id: minerals.id) 
# Correspondence.create(name: "Red Zircon", category_id: minerals.id) 
# Correspondence.create(name: "Red Agate", category_id: minerals.id)
# Correspondence.create(name: "Moonstone", category_id: minerals.id) 
# Correspondence.create(name: "Jasper", category_id: minerals.id) 
# Correspondence.create(name: "Sunstone", category_id: minerals.id)
# Correspondence.create(name: "Tanzanite", category_id: minerals.id) 
# Correspondence.create(name: "Zoisite", category_id: minerals.id) 
# Correspondence.create(name: "Amber", category_id: minerals.id) 
# Correspondence.create(name: "Fluorite", category_id: minerals.id)  
# Correspondence.create(name: "Hematite", category_id: minerals.id) 
# Correspondence.create(name: "Iolite", category_id: minerals.id) 
# Correspondence.create(name: "Kunzite", category_id: minerals.id) 
# Correspondence.create(name: "Phenacite", category_id: minerals.id) 
# Correspondence.create(name: "Clear Quartz", category_id: minerals.id) 
# Correspondence.create(name: "Rhodonite", category_id: minerals.id) 
# Correspondence.create(name: "Garnet", category_id: minerals.id) 
# Correspondence.create(name: "Brown Jade", category_id: minerals.id)  
# Correspondence.create(name: "Opal", category_id: minerals.id)  
# Correspondence.create(name: "Selenite", category_id: minerals.id)  
# Correspondence.create(name: "Sodalite", category_id: minerals.id) 
# Correspondence.create(name: "Amazonite", category_id: minerals.id)
# Correspondence.create(name: "Apache Tears", category_id: minerals.id)
# Correspondence.create(name: "Jet", category_id: minerals.id)
# Correspondence.create(name: "Lapis Lazuli", category_id: minerals.id)
# Correspondence.create(name: "Obsidian", category_id: minerals.id) 
# Correspondence.create(name: "Carnelian", category_id: minerals.id) 
# Correspondence.create(name: "Herkimer Diamond", category_id: minerals.id) 
# Correspondence.create(name: "Amethyst", category_id: minerals.id)  
# Correspondence.create(name: "Blue Lace Agate", category_id: minerals.id) 
# Correspondence.create(name: "Howlite", category_id: minerals.id)  
# Correspondence.create(name: "Sapphire", category_id: minerals.id)  
# Correspondence.create(name: "Sugilite", category_id: minerals.id)  
# Correspondence.create(name: "Blue Topaz", category_id: minerals.id) 
# Correspondence.create(name: "Cat’s Eye", category_id: minerals.id) 
# Correspondence.create(name: "Hawk’s Eye", category_id: minerals.id) 
# Correspondence.create(name: "Labradorite", category_id: minerals.id) 
# Correspondence.create(name: "Azurite", category_id: minerals.id) 
# Correspondence.create(name: "Ametrine", category_id: minerals.id) 
# Correspondence.create(name: "Apophyllite", category_id: minerals.id) 
# Correspondence.create(name: "Calcite", category_id: minerals.id) 
# Correspondence.create(name: "Celestite", category_id: minerals.id) 
# Correspondence.create(name: "Cerussite", category_id: minerals.id)
# Correspondence.create(name: "Moldovite", category_id: minerals.id) 
# Correspondence.create(name: "Staurolite", category_id: minerals.id) 
# Correspondence.create(name: "Turquoise (mineral)", category_id: minerals.id)
# Correspondence.create(name: "Lodestone", category_id: minerals.id) 
# Correspondence.create(name: "Tourmaline", category_id: minerals.id) 
# Correspondence.create(name: "Aquamarine", category_id: minerals.id) 
# Correspondence.create(name: "Citrine", category_id: minerals.id) 
# Correspondence.create(name: "Onyx", category_id: minerals.id) 
# Correspondence.create(name: "Black Opal", category_id: minerals.id)
# Correspondence.create(name: "Sardonyx", category_id: minerals.id) 
# Correspondence.create(name: "Danburite", category_id: minerals.id)
# Correspondence.create(name: "Yellow Quartz", category_id: minerals.id)
# Correspondence.create(name: "Alexandrite", category_id: minerals.id) 
# Correspondence.create(name: "Andalusite", category_id: minerals.id) 
# Correspondence.create(name: "Chrysocolla", category_id: minerals.id) 
# Correspondence.create(name: "Lepidolite", category_id: minerals.id) 
# Correspondence.create(name: "Petrified Wood", category_id: minerals.id) 
# Correspondence.create(name: "Serpentine", category_id: minerals.id) 
# Correspondence.create(name: "Smoky Quartz", category_id: minerals.id) 
# Correspondence.create(name: "Tsavorite", category_id: minerals.id)
# Correspondence.create(name: "Emerald", category_id: minerals.id) 
# Correspondence.create(name: "Salt", category_id: minerals.id) 
# Correspondence.create(name: "Desert Rose", category_id: minerals.id)
# Correspondence.create(name: "Kyanite", category_id: minerals.id) 
# Correspondence.create(name: "Sard", category_id: minerals.id) 



# abundance = Intention.create(name: "Abundance", desc: "To Attract, Perpetuate")

# virgo = Correspondence.create(name: "Virgo")


# zodiac.correspondences << virgo
# celest.correspondences << jupiter

# abundance.correspondences << virgo
# abundance.correspondences << jupiter

# puts "Seeded."

reader = PDF::Reader.new("BookOfCorrespondences.pdf")
reader.pages.each do |page|
    if page.number > 23
        text_array = page.text.split("\n")
        text_array.each do |line| 
            info = line.lstrip.rstrip.split(/\:\s(.*)/)
            if info.length == 2
                category = Category.find_or_create_by(title: info.first)
                correspondence_names = info.last.split(", ")
                correspondence_names.each do |name|
                    cor = Correspondence.create(name: name, category_id: category.id)
                end
            end
        end
    end
end