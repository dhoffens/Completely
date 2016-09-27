# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


job1 = Job.create!(name: "Moving assistance", description: "Help me move", budget_low: 20, budget_high: 50, zip: 33131, user_id: 4, digital: false)
job2 = Job.create!(name: "Spanish tutor", description: "Teach me conversational spanish", budget_low: 100, budget_high: 200, zip: 33131, user_id: 4, digital: false)
job3 = Job.create!(name: "Cooking help", description: "Help me cook dinner for 10 people", budget_low: 50, budget_high: 100, zip: 33131, user_id: 4, digital: false)
job4 = Job.create!(name: "Website development", description: "Make me a dynamic website for my small business", budget_low: 500, budget_high: 1000, zip: 33131, user_id: 4, digital: true)
job5 = Job.create!(name: "Take me to work", description: "Take me to work every day this week", budget_low: 80, budget_high: 100, zip: 33131, user_id: 4, digital: false)