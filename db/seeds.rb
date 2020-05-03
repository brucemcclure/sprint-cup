# # Create two categories 
# # The reason why these tables were chosen first
# # Is becasue they dont hold any foreign keys

# soft_dev = Category.create(title: "Software Development", description: "The dos and donts of working with other developers")
# house_training = Category.create(title: "house training", description: "Keep the office clean")

# # Seed 20 dummy fines and awards to each category
# # NB This could not be done first because both fines and awards hold foreign keys

# for i in 0..20
#     soft_dev.fines.create(title: "dev #{i}", description: "description #{i}", amount: i)
#     soft_dev.awards.create(title: "dev #{i}", description: "description #{i}", amount: i)
#     house_training.fines.create(title: "house #{i}", description: "description #{i}", amount: i)
#     house_training.awards.create(title: "house #{i}", description: "description #{i}", amount: i)
# end

# # Use the instance of the category to create and reference the leagues
# # 2 leagues are created, one for software development fines and the other for general office fines

# soft_dev.leagues.create(title: "MERN assessment", description: "3 weeks of arguments")
# house_training.leagues.create(title: "General office ", description: "3 weeks of arguments")

# # Getting a ref to the first League object
# f = League.first

# # Creating 2 sprints which ref that League object
# f.sprints.create(title: "Week 1", deadline: "20/05/2020", meeting_point: "central perk")
# f.sprints.create(title: "Week 2", deadline: "25/05/2020", meeting_point: "the fire house")

# # first_league = League.find(1)
# # first_league.users.create(name: "pickles", username: "mr pickles", email: "user@email.com", password: "password")

# # second_league = League.find(2)
# # first_league.users.create(name: "Nessy", username: "Mrs Nessy", email: "nessy@email.com", encrypted_password: "password")

# for i in 1..10
#     User.create(name: "user#{i}", username: "username#{i}", email: "username#{i}@email.com", password: "password")
# end

##################
###   Round 2  ###
##################

require_relative('./seed_data')

user_data = USER_DATA
category_data = CATEGORY_DATA
dev_fine_data = DEV_FINE_DATA
house_fine_data = HOUSE_FINE_DATA
dev_award_data = DEV_AWARD_DATA
house_award_data = HOUSE_AWARD_DATA
league_data = LEAGUE_DATA
sprint_data = SPRINT_DATA

# Creating 10 users
for user in user_data
    User.create(name: user[:name], username: user[:username], email: user[:email], password: user[:password])
end

# Creates 2 categories
for category in category_data
    Category.create(title: category[:title], description: category[:description])
end

# Creates dev fines
for fine in dev_fine_data
    Fine.create(title: fine[:title], description: fine[:description], amount: rand(1..5), category_id: 1)
end

# Creates house fines
for fine in house_fine_data
    Fine.create(title: fine[:title], description: fine[:description], amount: rand(1..5), category_id: 2)
end

# Creates dev awards
for award in dev_award_data
    Award.create(title: award[:title], description: award[:description], amount: rand(1..5), category_id: 1)
end

# Creates house awards
for award in house_award_data
    Award.create(title: award[:title], description: award[:description], amount: rand(1..5), category_id: 2)
end

User.first.leagues.create(title: league_data[0][:title], description: league_data[0][:description], category_id: league_data[0][:category_id]) 
User.find(2).leagues.create(title: league_data[1][:title], description: league_data[1][:description], category_id: league_data[1][:category_id]) 

# Adding the users to the the two leagues
for i in 3..6
    League.first.users << User.find(i)
end

for i in 7..10
    League.find(2).users << User.find(i)
end

# Creating 3 sprints per League

for sprint in sprint_data
    Sprint.create( title: sprint[:title], deadline: sprint[:deadline], meeting_point: sprint[:meeting_point], league_id: sprint[:league_id])
end