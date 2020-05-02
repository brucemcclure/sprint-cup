# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

soft_dev = Category.create(title: "Software Development", description: "The dos and donts of working with other developers")

for i in 0..20
    soft_dev.fines.create(title: "test #{i}", description: "description #{i}", amount: i)
    soft_dev.awards.create(title: "test #{i}", description: "description #{i}", amount: i)
end

