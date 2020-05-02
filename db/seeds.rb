# Create two categories 
# The reason why these tables were chosen first
# Is becasue they dont hold any foreign keys

soft_dev = Category.create(title: "Software Development", description: "The dos and donts of working with other developers")
house_training = Category.create(title: "house training", description: "Keep the office clean")

# Seed 20 dummy fines and awards to each category
# NB This could not be done first because both fines and awards hold foreign keys

for i in 0..20
    soft_dev.fines.create(title: "dev #{i}", description: "description #{i}", amount: i)
    soft_dev.awards.create(title: "dev #{i}", description: "description #{i}", amount: i)
    house_training.fines.create(title: "house #{i}", description: "description #{i}", amount: i)
    house_training.awards.create(title: "house #{i}", description: "description #{i}", amount: i)
end

# Use the instance of the category to create and reference the leagues
# 2 leagues are created, one for software development fines and the other for general office fines

soft_dev.leagues.create(title: "MERN assessment", description: "3 weeks of arguments")
house_training.leagues.create(title: "General office ", description: "3 weeks of arguments")

# Getting a ref to the first League object
f = League.first

# Creating 2 sprints which ref that League object
f.sprints.create(title: "Week 1", deadline: "20/05/2020", meeting_point: "central perk")
f.sprints.create(title: "Week 2", deadline: "25/05/2020", meeting_point: "the fire house")

