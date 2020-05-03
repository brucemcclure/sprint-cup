# Users
USER_DATA = [
    { name: "Squirtle", username: "Squirt", email: "squirt@email.com", password: "password"},
    { name: "Wartortle", username: "War", email: "war@email.com", password: "password"},
    { name: "Blastoise", username: "Blast", email: "blast@email.com", password: "password"},
    { name: "Bulbasaur", username: "Bulba", email: "bulba@email.com", password: "password"},
    { name: "Ivysaur", username: "Ivy", email: "ivy@email.com", password: "password"},
    { name: "Venasaur", username: "Vena", email: "vena@email.com", password: "password"},
    { name: "Charmander", username: "Charm", email: "charm@email.com", password: "password"},
    { name: "Charmeleon", username: "Leon", email: "leon@email.com", password: "password"},
    { name: "Charizard", username: "Zard", email: "zard@email.com", password: "password"},
    { name: "Ditto", username: "Ditto", email: "ditto@email.com", password: "password"},
]

# Categories 
CATEGORY_DATA = [
    { title: "Dev Fines", description: "Git Gud"},
    { title: "House Fines", description: "Dont be dirty"},
]


# Fines 
DEV_FINE_DATA = [
    { title: "Push to Master", description: "Push to Master", amount: 1, category_id: 1 },
    { title: "No comments", description: "No comments", amount: 2, category_id: 1 },
    { title: "Working too late", description: "Working too late", amount: 3, category_id: 1 },
    { title: "Bad code convention", description: "Bad code convention", amount: 4, category_id: 1 },
    { title: "Bad company convention", description: "Bad company convention", amount: 5, category_id: 1 },
]

HOUSE_FINE_DATA = [
    { title: "Leaving the trash when its full", description: "Leaving the trash when its full", amount: 1, category_id: 2 },
    { title: "Leaving coffe mugs on your desk", description: "Leaving coffe mugs on your desk", amount: 2, category_id: 2 },
    { title: "Not putting dishes in the dish washer", description: "Not putting dishes in the dish washer", amount: 3, category_id: 2 },
    { title: "Listening to music without headphones", description: "Listening to music without headphones", amount: 4, category_id: 2 },
    { title: "Bitching without solutions", description: "Bitching without solutions", amount: 5, category_id: 2 },
]

# Awards
DEV_AWARD_DATA = [
    { title: "Teaching back", description: "Teaching back", amount: 1, category_id: 1 },
    { title: "Good comments", description: "Good comments", amount: 2, category_id: 1 },
    { title: "Clean code", description: "Clean code", amount: 3, category_id: 1 },
    { title: "Flagging a bug", description: "Flagging a bug", amount: 4, category_id: 1 },
    { title: "Helping out a Jr", description: "Helping out a Jr", amount: 5, category_id: 1 },
]

HOUSE_AWARD_DATA = [
    { title: "Tidy desk", description: "Tidy desk", amount: 1, category_id: 2 },
    { title: "Unpacking dishwasher", description: "Unpacking dishwasher", amount: 2, category_id: 2 },
    { title: "Locking up", description: "Locking up", amount: 3, category_id: 2 },
    { title: "Opening up", description: "Opening up", amount: 4, category_id: 2 },
    { title: "Initiating team coffee", description: "Initiating team coffee", amount: 5, category_id: 2 },
]


# Leagues
LEAGUE_DATA = [
    { title: "Dev Fines", description: "Dev Fines", category_id: 1},
    { title: "House Fines", description: "House Fines", category_id: 2}
]

SPRINT_DATA = [
    { title: "Week 1", deadline: "1/06/2020", meeting_point: "Mclarens", league_id: 1 },
    { title: "Week 2", deadline: "7/06/2020", meeting_point: "Mclarens", league_id: 1 },
    { title: "Week 3", deadline: "14/06/2020", meeting_point: "Mclarens", league_id: 1 },
    { title: "Week 1", deadline: "1/06/2020", meeting_point: "Mclarens", league_id: 2 },
    { title: "Week 2", deadline: "7/06/2020", meeting_point: "Mclarens", league_id: 2 },
    { title: "Week 3", deadline: "14/06/2020", meeting_point: "Mclarens", league_id: 2 },
]



