# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
zodiac = Category.create(title: "Zodiac")
celests = Category.create(title: "Solar System")
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
plants = Category.create(title: "Misc. Plants")
trees = Category.create(title: "Trees")
herbs = Category.create(title: "Herb & Garden")
minerals = Category.create(title: "Gemstones & Minerals")
sea = Category.create(title: "From the Sea")
goddesses = Category.create(title: "Goddesses")
gods = Category.create(title: "Gods")
animals = Category.create(title: "Animals")
marine_life = Category.create(title: "Marine Life")
reptiles = Category.create(title: "Reptiles")
birds = Category.create(title: "Birds")
critters = Category.create(title: "Insect & Misc.")
mythical = Category.create(title: "Magical")
time_of_day = Category.create(title: "Time of Day")
tarot = Category.create(title: "Tarot")
numbers = Category.create(title: "Numbers")
celebrations = Category.create(title: "Celebrations")
Category.create(title: "Mythical")

Correspondence.create(name: "Virgo", category_id: 1)
Correspondence.create(name: "Jupiter", category_id: 2)
Correspondence.create(name: "Full", category_id: 3)
Correspondence.create(name: "Waxing", category_id: 3)
Correspondence.create(name: "August", category_id: 5)
Correspondence.create(name: "June", category_id: 5)
Correspondence.create(name: "Autumn", category_id: 4)
Correspondence.create(name: "Thursday", category_id: 6)
Correspondence.create(name: "Ruis", category_id: 7)
Correspondence.create(name: "Feoh", category_id: 8)
Correspondence.create(name: "Earth", category_id: 9)
Correspondence.create(name: "North", category_id: 10)
Correspondence.create(name: "Gold", category_id: 11)
Correspondence.create(name: "Orange", category_id: 11)
Correspondence.create(name: "Green", category_id: 11)
Correspondence.create(name: "Sacral", category_id: 12)
Correspondence.create(name: "8", category_id: 28)
Correspondence.create(name: "Grain", category_id: 13)
Correspondence.create(name: "Myrrh", category_id: 13)
Correspondence.create(name: "Elder", category_id: 14)
Correspondence.create(name: "Chestnut", category_id: 14)
Correspondence.create(name: "Maple", category_id: 14)
Correspondence.create(name: "Olive", category_id: 14)
Correspondence.create(name: "Palm", category_id: 14)
Correspondence.create(name: "Mesquite", category_id: 14)
Correspondence.create(name: "Pine", category_id: 14)
Correspondence.create(name: "Oak", category_id: 14)
Correspondence.create(name: "Sycamore", category_id: 14)
Correspondence.create(name: "Bluebell", category_id: 15)
Correspondence.create(name: "Honeysuckle", category_id: 15)
Correspondence.create(name: "Grape", category_id: 15)
Correspondence.create(name: "Agate", category_id: 16)
Correspondence.create(name: "Apatite", category_id: 16)
Correspondence.create(name: "Bloodstone", category_id: 16)
Correspondence.create(name: "Chrysoberyl", category_id: 16)
Correspondence.create(name: "Aventurine", category_id: 16)
Correspondence.create(name: "Citrine", category_id: 16)
Correspondence.create(name: "Chrysoprase", category_id: 16)
Correspondence.create(name: "Dioptase", category_id: 16)
Correspondence.create(name: "Malachite", category_id: 16)
Correspondence.create(name: "Jade", category_id: 16)
Correspondence.create(name: "Moss Agate", category_id: 16)
Correspondence.create(name: "Peridot", category_id: 16)
Correspondence.create(name: "Rhodochrosite", category_id: 16)
Correspondence.create(name: "Salt", category_id: 16)
Correspondence.create(name: "Quartz", category_id: 16)
Correspondence.create(name: "Smoky Quartz", category_id: 16)
Correspondence.create(name: "Topaz", category_id: 16)
Correspondence.create(name: "Tourmaline", category_id: 16)
Correspondence.create(name: "Tiger’s Eye", category_id: 16)
Correspondence.create(name: "Zircon", category_id: 16)
Correspondence.create(name: "Clam", category_id: 17)
Correspondence.create(name: "Abalone", category_id: 17)
Correspondence.create(name: "Cowry", category_id: 17)
Correspondence.create(name: "Mussel", category_id: 17)
Correspondence.create(name: "Oyster", category_id: 17)
Correspondence.create(name: "Cerridwen", category_id: 18)
Correspondence.create(name: "Artio", category_id: 18)
Correspondence.create(name: "Ceres", category_id: 18)
Correspondence.create(name: "Aine", category_id: 18)
Correspondence.create(name: "Astarte", category_id: 18)
Correspondence.create(name: "Danu", category_id: 18)
Correspondence.create(name: "Coventina", category_id: 18)
Correspondence.create(name: "Bast", category_id: 18)
Correspondence.create(name: "Demeter", category_id: 18)
Correspondence.create(name: "Epona", category_id: 18)
Correspondence.create(name: "Fortuna", category_id: 18)
Correspondence.create(name: "Frigg", category_id: 18)
Correspondence.create(name: "Ganga", category_id: 18)
Correspondence.create(name: "Gaia", category_id: 18)
Correspondence.create(name: "Hestia", category_id: 18)
Correspondence.create(name: "Holle", category_id: 18)
Correspondence.create(name: "Inanna", category_id: 18)
Correspondence.create(name: "Isis", category_id: 18)
Correspondence.create(name: "Maia", category_id: 18)
Correspondence.create(name: "Lakshmi", category_id: 18)
Correspondence.create(name: "Rhea", category_id: 18)
Correspondence.create(name: "Rhiannon", category_id: 18)
Correspondence.create(name: "Sedna", category_id: 18)
Correspondence.create(name: "Cernunnos", category_id: 19)
Correspondence.create(name: "Jupiter", category_id: 19)
Correspondence.create(name: "the Dagda", category_id: 19)
Correspondence.create(name: "the Green Man", category_id: 19)
Correspondence.create(name: "Enki", category_id: 19)
Correspondence.create(name: "Hades", category_id: 19)
Correspondence.create(name: "Pushan", category_id: 19)
Correspondence.create(name: "Zeus", category_id: 19)
Correspondence.create(name: "Vertimnus", category_id: 19)
Correspondence.create(name: "Cow", category_id: 20)
Correspondence.create(name: "Buffalo", category_id: 20)
Correspondence.create(name: "Ox", category_id: 20)
Correspondence.create(name: "Bison", category_id: 20)
Correspondence.create(name: "Chipmunk", category_id: 20)
Correspondence.create(name: "Goat", category_id: 20)
Correspondence.create(name: "Cattle", category_id: 20)
Correspondence.create(name: "Horse", category_id: 20)
Correspondence.create(name: "Pig", category_id: 20)
Correspondence.create(name: "Rabbit", category_id: 20)
Correspondence.create(name: "Reindeer", category_id: 20)
Correspondence.create(name: "Sheep", category_id: 20)
Correspondence.create(name: "Squirrel", category_id: 20)
Correspondence.create(name: "Salmon", category_id: 17)
Correspondence.create(name: "Crane", category_id: 23)
Correspondence.create(name: "Flamingo", category_id: 23)
Correspondence.create(name: "Chicken", category_id: 23)
Correspondence.create(name: "Duck", category_id: 23)
Correspondence.create(name: "Egret", category_id: 23)
Correspondence.create(name: "Heron", category_id: 23)
Correspondence.create(name: "Goose", category_id: 23)
Correspondence.create(name: "Ibis", category_id: 23)
Correspondence.create(name: "Nighthawk", category_id: 23)
Correspondence.create(name: "Kingfisher", category_id: 23)
Correspondence.create(name: "Osprey", category_id: 23)
Correspondence.create(name: "Parrot", category_id: 23)
Correspondence.create(name: "Pelican", category_id: 23)
Correspondence.create(name: "Peacock", category_id: 23)
Correspondence.create(name: "Grasshopper", category_id: 24)
Correspondence.create(name: "Sandpiper", category_id: 23)
Correspondence.create(name: "Seagull", category_id: 23)
Correspondence.create(name: "Moth", category_id: 24)
Correspondence.create(name: "Turkey", category_id: 23)
Correspondence.create(name: "Bee", category_id: 24)
Correspondence.create(name: "Turtle", category_id: 22)
Correspondence.create(name: "Frog", category_id: 22)
Correspondence.create(name: "Crocodile", category_id: 22)
Correspondence.create(name: "Air", category_id: 9)
Correspondence.create(name: "Black", category_id: 11)
Correspondence.create(name: "Pink", category_id: 11)
Correspondence.create(name: "Angelica", category_id: 15)
Correspondence.create(name: "Iris", category_id: 15)
Correspondence.create(name: "Clover", category_id: 15)
Correspondence.create(name: "Catnip", category_id: 15)
Correspondence.create(name: "Cypress", category_id: 14)
Correspondence.create(name: "Mustard", category_id: 13)
Correspondence.create(name: "Angelite", category_id: 16)
Correspondence.create(name: "Larimar", category_id: 16)
Correspondence.create(name: "Aragonite", category_id: 16)
Correspondence.create(name: "Beryl", category_id: 16)
Correspondence.create(name: "Ruby", category_id: 16)
Correspondence.create(name: "Rose Quartz", category_id: 16)
Correspondence.create(name: "Nanna", category_id: 18)
Correspondence.create(name: "Macha", category_id: 18)
Correspondence.create(name: "Nemesis", category_id: 18)
Correspondence.create(name: "Persephone", category_id: 18)
Correspondence.create(name: "Loki", category_id: 19)
Correspondence.create(name: "Pluto", category_id: 19)
Correspondence.create(name: "Coyote", category_id: 20)
Correspondence.create(name: "Wolf ", category_id: 20)
Correspondence.create(name: "Capricorn", category_id: 1)
Correspondence.create(name: "Sunday", category_id: 6)
Correspondence.create(name: "Lughnasadh", category_id: 29)
Correspondence.create(name: "Mabon", category_id: 29)
Correspondence.create(name: "Jera", category_id: 8)
Correspondence.create(name: "Northwest", category_id: 10)
Correspondence.create(name: "Purple", category_id: 11)
Correspondence.create(name: "1", category_id: 28)
Correspondence.create(name: "7", category_id: 28)
Correspondence.create(name: "9", category_id: 28)
Correspondence.create(name: "4", category_id: 28)
Correspondence.create(name: "10", category_id: 28)
Correspondence.create(name: "Sun", category_id: 27)
Correspondence.create(name: "World", category_id: 27)
Correspondence.create(name: "Cherry", category_id: 14)
Correspondence.create(name: "Spindletree", category_id: 14)
Correspondence.create(name: "Moonstone", category_id: 16)
Correspondence.create(name: "Justitia", category_id: 18)
Correspondence.create(name: "Dionysus", category_id: 19)
Correspondence.create(name: "Janus", category_id: 19)
Correspondence.create(name: "Vishnu", category_id: 19)
Correspondence.create(name: "Brownies", category_id: 25)
Correspondence.create(name: "Gazelle", category_id: 20)
Correspondence.create(name: "Moose", category_id: 20)
Correspondence.create(name: "Bluebird", category_id: 23)
Correspondence.create(name: "Firefly", category_id: 24)
Correspondence.create(name: "Moon", category_id: 2)
Correspondence.create(name: " Mars", category_id: 2)
Correspondence.create(name: "Sun", category_id: 2)
Correspondence.create(name: "Aries", category_id: 1)
Correspondence.create(name: "Leo", category_id: 1)
Correspondence.create(name: "Tuesday", category_id: 6)
Correspondence.create(name: "Fire", category_id: 9)
Correspondence.create(name: "5", category_id: 28)
Correspondence.create(name: "13", category_id: 28)
Correspondence.create(name: "3", category_id: 28)
Correspondence.create(name: " 1", category_id: 28)
Correspondence.create(name: "Red", category_id: 11)
Correspondence.create(name: "Yellow", category_id: 11)
Correspondence.create(name: "Strength", category_id: 27)
Correspondence.create(name: "Temperance", category_id: 27)
Correspondence.create(name: "Wands", category_id: 27)
Correspondence.create(name: "Juniper", category_id: 14)
Correspondence.create(name: "Apple", category_id: 14)
Correspondence.create(name: "Peppermint", category_id: 15)
Correspondence.create(name: "Gardenia", category_id: 15)
Correspondence.create(name: "Geranium", category_id: 15)
Correspondence.create(name: "Broom", category_id: 15)
Correspondence.create(name: " Cinnamon", category_id: 13)
Correspondence.create(name: "Grain (corn)", category_id: 13)
Correspondence.create(name: "Reed", category_id: 13)
Correspondence.create(name: "Thistle", category_id: 13)
Correspondence.create(name: "Zoisite", category_id: 16)
Correspondence.create(name: "Jasper", category_id: 16)
Correspondence.create(name: "Sunstone", category_id: 16)
Correspondence.create(name: "Tanzanite", category_id: 16)
Correspondence.create(name: "Kali", category_id: 18)
Correspondence.create(name: "Ishtar", category_id: 18)
Correspondence.create(name: "Anat", category_id: 18)
Correspondence.create(name: "The Morrigan", category_id: 18)
Correspondence.create(name: "Minerva", category_id: 18)
Correspondence.create(name: "Sekhmet", category_id: 18)
Correspondence.create(name: "Surya", category_id: 19)
Correspondence.create(name: "Mars", category_id: 19)
Correspondence.create(name: "Ares", category_id: 19)
Correspondence.create(name: "Poseidon", category_id: 19)
Correspondence.create(name: "Salamanders", category_id: 25)
Correspondence.create(name: "Sylphs", category_id: 25)
Correspondence.create(name: "Antelope", category_id: 20)
Correspondence.create(name: "Beaver", category_id: 20)
Correspondence.create(name: "Badger", category_id: 20)
Correspondence.create(name: "Hippopotamus", category_id: 20)
Correspondence.create(name: "Caribou", category_id: 20)
Correspondence.create(name: "Wolf", category_id: 20)
Correspondence.create(name: "Tiger", category_id: 20)
Correspondence.create(name: "Cobra", category_id: 22)
Correspondence.create(name: "Condor", category_id: 23)
Correspondence.create(name: "Chickadee", category_id: 23)
Correspondence.create(name: "Ant", category_id: 24)
Correspondence.create(name: "Spring", category_id: 4)
Correspondence.create(name: "Imbolc", category_id: 29)
Correspondence.create(name: "Dawn", category_id: 26)
Correspondence.create(name: "Luis", category_id: 7)
Correspondence.create(name: "Hagal", category_id: 8)
Correspondence.create(name: "East", category_id: 10)
Correspondence.create(name: "Rose", category_id: 11)
Correspondence.create(name: "White", category_id: 11)
Correspondence.create(name: "Thyme", category_id: 15)
Correspondence.create(name: "Lemon Balm", category_id: 15)
Correspondence.create(name: "Mistletoe", category_id: 13)
Correspondence.create(name: "Patchouli", category_id: 13)
Correspondence.create(name: "Ginseng", category_id: 13)
Correspondence.create(name: "Sandalwood", category_id: 13)
Correspondence.create(name: "Bodhi", category_id: 14)
Correspondence.create(name: "Pearl", category_id: 17)
Correspondence.create(name: "Amber", category_id: 16)
Correspondence.create(name: "Hematite", category_id: 16)
Correspondence.create(name: "Kunzite", category_id: 16)
Correspondence.create(name: "Iolite", category_id: 16)
Correspondence.create(name: "Phenacite", category_id: 16)
Correspondence.create(name: "Fluorite", category_id: 16)
Correspondence.create(name: "Rhodonite", category_id: 16)
Correspondence.create(name: "Durga", category_id: 18)
Correspondence.create(name: "Eos", category_id: 18)
Correspondence.create(name: "Baboon", category_id: 20)
Correspondence.create(name: "Bat", category_id: 20)
Correspondence.create(name: "Coyote", category_id: 20)
Correspondence.create(name: "Deer", category_id: 20)
Correspondence.create(name: "Bear", category_id: 20)
Correspondence.create(name: "Donkey", category_id: 20)
Correspondence.create(name: "Rooster", category_id: 23)
Correspondence.create(name: "Canary", category_id: 23)
Correspondence.create(name: "Eagle", category_id: 23)
Correspondence.create(name: "Goldfinch", category_id: 23)
Correspondence.create(name: "Sparrow", category_id: 23)
Correspondence.create(name: "Woodpecker", category_id: 23)
Correspondence.create(name: "Swan", category_id: 23)
Correspondence.create(name: "Wren", category_id: 23)
Correspondence.create(name: "Whale", category_id: 21)
Correspondence.create(name: "Cricket", category_id: 24)
Correspondence.create(name: "2", category_id: 28)
Correspondence.create(name: "Willow", category_id: 14)
Correspondence.create(name: "Spruce", category_id: 14)
Correspondence.create(name: "Yew", category_id: 14)
Correspondence.create(name: "Heather", category_id: 15)
Correspondence.create(name: "Lilac", category_id: 15)
Correspondence.create(name: "Thyme", category_id: 15)
Correspondence.create(name: "Bamboo", category_id: 13)
Correspondence.create(name: "Garnet", category_id: 16)
Correspondence.create(name: "Opal", category_id: 16)
Correspondence.create(name: "Selenite", category_id: 16)
Correspondence.create(name: "Sodalite", category_id: 16)
Correspondence.create(name: "Slipper Shell", category_id: 17)
Correspondence.create(name: "Periwinkle", category_id: 17)
Correspondence.create(name: "Coral", category_id: 17)
Correspondence.create(name: "Murex", category_id: 17)
Correspondence.create(name: "Bull", category_id: 20)
Correspondence.create(name: "Cheetah", category_id: 20)
Correspondence.create(name: "Fox", category_id: 20)
Correspondence.create(name: "Dingo", category_id: 20)
Correspondence.create(name: "Gorilla", category_id: 20)
Correspondence.create(name: "Hyena", category_id: 20)
Correspondence.create(name: "Kangaroo", category_id: 20)
Correspondence.create(name: "Muskrat", category_id: 20)
Correspondence.create(name: "Monkey", category_id: 20)
Correspondence.create(name: "Panda", category_id: 20)
Correspondence.create(name: "Rat", category_id: 20)
Correspondence.create(name: "Raccoon", category_id: 20)
Correspondence.create(name: "Albatross", category_id: 23)
Correspondence.create(name: "Blue Jay", category_id: 23)
Correspondence.create(name: "Crow", category_id: 23)
Correspondence.create(name: "Cuckoo", category_id: 23)
Correspondence.create(name: "Magpie", category_id: 23)
Correspondence.create(name: "Starling", category_id: 23)
Correspondence.create(name: "Kite", category_id: 23)
Correspondence.create(name: "Alligator", category_id: 22)
Correspondence.create(name: "Chameleon", category_id: 22)
Correspondence.create(name: "Eel", category_id: 17)
Correspondence.create(name: "Crab", category_id: 17)
Correspondence.create(name: "Shark", category_id: 17)
Correspondence.create(name: "Taurus", category_id: 1)
Correspondence.create(name: "Venus", category_id: 2)
Correspondence.create(name: "Heart", category_id: 12)
Correspondence.create(name: "6", category_id: 28)
Correspondence.create(name: "Cedar", category_id: 14)
Correspondence.create(name: "Carnation", category_id: 15)
Correspondence.create(name: "Jasmine", category_id: 15)
Correspondence.create(name: "Marigold", category_id: 15)
Correspondence.create(name: "Hyacinth", category_id: 15)
Correspondence.create(name: "Gorse", category_id: 15)
Correspondence.create(name: "Morning Glory", category_id: 15)
Correspondence.create(name: "Rose ", category_id: 15)
Correspondence.create(name: "Athena", category_id: 18)
Correspondence.create(name: "Aphrodite", category_id: 18)
Correspondence.create(name: "Brigid", category_id: 18)
Correspondence.create(name: "Devi", category_id: 18)
Correspondence.create(name: "Venus", category_id: 18)
Correspondence.create(name: "Cupid", category_id: 19)
Correspondence.create(name: "Cat", category_id: 20)
Correspondence.create(name: "Elephant", category_id: 20)
Correspondence.create(name: "Prairie Dog", category_id: 20)
Correspondence.create(name: "Lion", category_id: 20)
Correspondence.create(name: "Duck", category_id: 20)
Correspondence.create(name: "Raven", category_id: 20)
Correspondence.create(name: "Owl", category_id: 20)
Correspondence.create(name: "Grosbeak", category_id: 20)
Correspondence.create(name: "Sphinx", category_id: 30)
Correspondence.create(name: "Mars", category_id: 2)
Correspondence.create(name: "Garlic", category_id: 15)
Correspondence.create(name: "Yarrow", category_id: 15)
Correspondence.create(name: "Spearmint", category_id: 15)
Correspondence.create(name: "Fennel", category_id: 15)
Correspondence.create(name: "Carnelian", category_id: 16)
Correspondence.create(name: "Cybele", category_id: 18)
Correspondence.create(name: "Baal", category_id: 19)
Correspondence.create(name: "Armadillo", category_id: 20)
Correspondence.create(name: "Dog", category_id: 20)
Correspondence.create(name: "Chimpanzee", category_id: 20)
Correspondence.create(name: "Skunk", category_id: 20)
Correspondence.create(name: "Wolverine", category_id: 20)
Correspondence.create(name: "Porcupine", category_id: 20)
Correspondence.create(name: "Penguin", category_id: 23)
Correspondence.create(name: "Octopus", category_id: 21)
Correspondence.create(name: "Ladybug", category_id: 24)
Correspondence.create(name: "Earth", category_id: 2)
Correspondence.create(name: "April", category_id: 5)
Correspondence.create(name: "May", category_id: 5)
Correspondence.create(name: "July", category_id: 5)
Correspondence.create(name: "September", category_id: 5)
Correspondence.create(name: "October", category_id: 5)
Correspondence.create(name: "Rosalia", category_id: 29)
Correspondence.create(name: "Ostara", category_id: 29)
Correspondence.create(name: "Earth Day", category_id: 29)
Correspondence.create(name: "Brown", category_id: 11)
Correspondence.create(name: "All plants used for food, flavorings, and healing", category_id: 13)
Correspondence.create(name: "Beltane", category_id: 29)
Correspondence.create(name: "Litha", category_id: 29)
Correspondence.create(name: "Walpurgis", category_id: 29)
Correspondence.create(name: "Herkimer Diamond", category_id: 16)
Correspondence.create(name: "Anemone", category_id: 15)
Correspondence.create(name: "Borage", category_id: 15)
Correspondence.create(name: "Broom", category_id: 15)
Correspondence.create(name: "Angelica", category_id: 15)
Correspondence.create(name: "Bergamot", category_id: 15)
Correspondence.create(name: "Aster", category_id: 15)
Correspondence.create(name: "Dill", category_id: 15)
Correspondence.create(name: "Carnation", category_id: 15)
Correspondence.create(name: "Daisy", category_id: 15)
Correspondence.create(name: "Daffodil", category_id: 15)
Correspondence.create(name: "Clover (red)", category_id: 15)
Correspondence.create(name: "Jasmine", category_id: 15)
Correspondence.create(name: "Heliotrope", category_id: 15)
Correspondence.create(name: "Holy Basil", category_id: 15)
Correspondence.create(name: "Honeysuckle", category_id: 15)
Correspondence.create(name: "Lemon Balm", category_id: 15)
Correspondence.create(name: "Lily of the Valley", category_id: 15)
Correspondence.create(name: "Lily", category_id: 15)
Correspondence.create(name: "Marjoram", category_id: 15)
Correspondence.create(name: "Monkshood", category_id: 15)
Correspondence.create(name: "Passionflower", category_id: 15)
Correspondence.create(name: "Rose", category_id: 15)
Correspondence.create(name: "Sweet Woodruff", category_id: 15)
Correspondence.create(name: "Thyme", category_id: 15)
Correspondence.create(name: "Valerian", category_id: 15)
Correspondence.create(name: "Yarrow", category_id: 15)
Correspondence.create(name: "Basil", category_id: 15)
Correspondence.create(name: "Chamomile", category_id: 15)
Correspondence.create(name: "Ivy", category_id: 15)
Correspondence.create(name: "Hyacinth", category_id: 15)
Correspondence.create(name: "Lavender", category_id: 15)
Correspondence.create(name: "Lilac", category_id: 15)
Correspondence.create(name: "Lovage", category_id: 15)
Correspondence.create(name: "Rosemary", category_id: 15)
Correspondence.create(name: "Strawberry", category_id: 15)
Correspondence.create(name: "Aine", category_id: 18)
Correspondence.create(name: "Amaterasu", category_id: 18)
Correspondence.create(name: "Ariadne", category_id: 18)
Correspondence.create(name: "Artio", category_id: 18)
Correspondence.create(name: "Anat", category_id: 18)
Correspondence.create(name: "Bertha", category_id: 18)
Correspondence.create(name: "Coatlicue", category_id: 18)
Correspondence.create(name: "Brigid", category_id: 18)
Correspondence.create(name: "Ceres", category_id: 18)
Correspondence.create(name: "Demeter", category_id: 18)
Correspondence.create(name: "Epona", category_id: 18)
Correspondence.create(name: "Gaia", category_id: 18)
Correspondence.create(name: "Flora", category_id: 18)
Correspondence.create(name: "Idunn", category_id: 18)
Correspondence.create(name: "Inanna", category_id: 18)
Correspondence.create(name: "Isis", category_id: 18)
Correspondence.create(name: "Kore", category_id: 18)
Correspondence.create(name: "Kupala", category_id: 18)
Correspondence.create(name: "Maia", category_id: 18)
Correspondence.create(name: "Modron", category_id: 18)
Correspondence.create(name: "Persephone", category_id: 18)
Correspondence.create(name: "Rhea", category_id: 18)
Correspondence.create(name: "Venus", category_id: 18)
Correspondence.create(name: "Xochiquetzal", category_id: 18)
Correspondence.create(name: "Adonis", category_id: 19)
Correspondence.create(name: "Amun", category_id: 19)
Correspondence.create(name: "Attis", category_id: 19)
Correspondence.create(name: "Byelobog", category_id: 19)
Correspondence.create(name: "Bacchus", category_id: 19)
Correspondence.create(name: "Inari", category_id: 19)
Correspondence.create(name: "Dumuzi", category_id: 19)
Correspondence.create(name: "Helios", category_id: 19)
Correspondence.create(name: "the Green Man", category_id: 19)
Correspondence.create(name: "Dionysus", category_id: 19)
Correspondence.create(name: "Jupiter", category_id: 19)
Correspondence.create(name: "Lugh", category_id: 19)
Correspondence.create(name: "Krishna", category_id: 19)
Correspondence.create(name: "Mithras", category_id: 19)
Correspondence.create(name: "Mars", category_id: 19)
Correspondence.create(name: "Osiris", category_id: 19)
Correspondence.create(name: "Quetzalcoatl", category_id: 19)
Correspondence.create(name: "Ra", category_id: 19)
Correspondence.create(name: "Shiva", category_id: 19)
Correspondence.create(name: "Silvanus", category_id: 19)
Correspondence.create(name: "Surya", category_id: 19)
Correspondence.create(name: "Vertimnus", category_id: 19)
Correspondence.create(name: " Aquarius", category_id: 1)
Correspondence.create(name: "Saturn", category_id: 2)
Correspondence.create(name: "Uranus", category_id: 2)
Correspondence.create(name: "Pluto", category_id: 2)
Correspondence.create(name: "West", category_id: 10)
Correspondence.create(name: "Acacia", category_id: 14)
Correspondence.create(name: "Myrtle", category_id: 14)
Correspondence.create(name: "Pomegranate", category_id: 14)
Correspondence.create(name: "Poppy", category_id: 15)
Correspondence.create(name: "Violet", category_id: 15)
Correspondence.create(name: "Aloe", category_id: 13)
Correspondence.create(name: "Lotus", category_id: 13)
Correspondence.create(name: "Wormwood", category_id: 13)
Correspondence.create(name: "Cowslip", category_id: 13)
Correspondence.create(name: "Apache Tears", category_id: 16)
Correspondence.create(name: "Amazonite", category_id: 16)
Correspondence.create(name: "Jet", category_id: 16)
Correspondence.create(name: "Obsidian", category_id: 16)
Correspondence.create(name: "Lapis Lazuli", category_id: 16)
Correspondence.create(name: "Arianrhod", category_id: 18)
Correspondence.create(name: "Ereshkigal", category_id: 18)
Correspondence.create(name: "Hecate", category_id: 18)
Correspondence.create(name: "Hel", category_id: 18)
Correspondence.create(name: "Hathor", category_id: 18)
Correspondence.create(name: "Maat", category_id: 18)
Correspondence.create(name: "Nephthys", category_id: 18)
Correspondence.create(name: "Anubis", category_id: 19)
Correspondence.create(name: "Arawn", category_id: 19)
Correspondence.create(name: "Hermes", category_id: 19)
Correspondence.create(name: "Nergal", category_id: 19)
Correspondence.create(name: "Jackal", category_id: 20)
Correspondence.create(name: "Dolphin", category_id: 21)
Correspondence.create(name: "Hawk", category_id: 23)
Correspondence.create(name: "Owl", category_id: 23)
Correspondence.create(name: "Vulture", category_id: 23)
Correspondence.create(name: "Snake", category_id: 22)
Correspondence.create(name: "Scorpion", category_id: 24)
Correspondence.create(name: "Spider", category_id: 24)
Correspondence.create(name: " Bee", category_id: 24)
 puts "Seeded."