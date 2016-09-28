# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#users

user1 = User.create!(name: "Dan", email: "dan@mail.com", password: "qwerty", password_confirmation: "qwerty", zip: "33131")
user2 = User.create!(name: "Mike", email: "mike@mail.com", password: "qwerty", password_confirmation: "qwerty", zip: "33130")
user3 = User.create!(name: "John", email: "john@mail.com", password: "qwerty", password_confirmation: "qwerty", zip: "33131")
user4 = User.create!(name: "Will", email: "will@mail.com", password: "qwerty", password_confirmation: "qwerty", zip: "33130")
user5 = User.create!(name: "Fred", email: "fred@mail.com", password: "qwerty", password_confirmation: "qwerty", zip: "33129")
user6 = User.create!(name: "Greg", email: "greg@mail.com", password: "qwerty", password_confirmation: "qwerty", zip: "33128")
user7 = User.create!(name: "Lilly", email: "lilly@mail.com", password: "qwerty", password_confirmation: "qwerty", zip: "33120")
user8 = User.create!(name: "Nizar", email: "nizar@mail.com", password: "qwerty", password_confirmation: "qwerty", zip: "33100")
user9 = User.create!(name: "TJ", email: "tj@mail.com", password: "qwerty", password_confirmation: "qwerty", zip: "33140")
user10 = User.create!(name: "Meneti", email: "meneti@mail.com", password: "qwerty", password_confirmation: "qwerty", zip: "33131")

#jobs

job1 = user1.jobs.create!(name: "Moving assistance", description: "Help me move", budget_low: 20, budget_high: 50, zip: 33131, user_id: 1, digital: false)
job2 = user1.jobs.create!(name: "Spanish tutor", description: "Teach me conversational spanish", budget_low: 100, budget_high: 200, zip: 33131, user_id: 1, digital: false)
job3 = user1.jobs.create!(name: "Cooking help", description: "Help me cook dinner for 10 people", budget_low: 50, budget_high: 100, zip: 33131, user_id: 1, digital: false)
job4 = user1.jobs.create!(name: "Website development", description: "Make me a dynamic website for my small business", budget_low: 500, budget_high: 1000, zip: 33131, user_id: 1, digital: true)
job5 = user1.jobs.create!(name: "Take me to work", description: "Take me to work every day this week", budget_low: 80, budget_high: 100, zip: 33131, user_id: 1, digital: false)

job1.comments.create!()


user2.jobs.create!(name: "Moving assistance", description: "Help me move", budget_low: 20, budget_high: 50, zip: 33131, user_id: 2, digital: false)
user2.jobs.create!(name: "Spanish tutor", description: "Teach me conversational spanish", budget_low: 100, budget_high: 200, zip: 33131, user_id: 2, digital: false)
user2.jobs.create!(name: "Cooking help", description: "Help me cook dinner for 10 people", budget_low: 50, budget_high: 100, zip: 33131, user_id: 2, digital: false)
user2.jobs.create!(name: "Website development", description: "Make me a dynamic website for my small business", budget_low: 500, budget_high: 1000, zip: 33131, user_id: 2, digital: true)
user2.jobs.create!(name: "Take me to work", description: "Take me to work every day this week", budget_low: 80, budget_high: 100, zip: 33131, user_id: 2, digital: false)

user3.jobs.create!(name: "Moving assistance", description: "Help me move", budget_low: 20, budget_high: 50, zip: 33131, user_id: 3, digital: false)
user3.jobs.create!(name: "Spanish tutor", description: "Teach me conversational spanish", budget_low: 100, budget_high: 200, zip: 33131, user_id: 3, digital: false)
user3.jobs.create!(name: "Cooking help", description: "Help me cook dinner for 10 people", budget_low: 50, budget_high: 100, zip: 33131, user_id: 3, digital: false)
user3.jobs.create!(name: "Website development", description: "Make me a dynamic website for my small business", budget_low: 500, budget_high: 1000, zip: 33131, user_id: 3, digital: true)
user3.jobs.create!(name: "Take me to work", description: "Take me to work every day this week", budget_low: 80, budget_high: 100, zip: 33131, user_id: 3, digital: false)

user4.jobs.create!(name: "Moving assistance", description: "Help me move", budget_low: 20, budget_high: 50, zip: 33131, user_id: 4, digital: false)
user4.jobs.create!(name: "Spanish tutor", description: "Teach me conversational spanish", budget_low: 100, budget_high: 200, zip: 33131, user_id: 4, digital: false)
user4.jobs.create!(name: "Cooking help", description: "Help me cook dinner for 10 people", budget_low: 50, budget_high: 100, zip: 33131, user_id: 4, digital: false)
user4.jobs.create!(name: "Website development", description: "Make me a dynamic website for my small business", budget_low: 500, budget_high: 1000, zip: 33131, user_id: 4, digital: true)
user4.jobs.create!(name: "Take me to work", description: "Take me to work every day this week", budget_low: 80, budget_high: 100, zip: 33131, user_id: 4, digital: false)

user5.jobs.create!(name: "Moving assistance", description: "Help me move", budget_low: 20, budget_high: 50, zip: 33131, user_id: 5, digital: false)
user5.jobs.create!(name: "Spanish tutor", description: "Teach me conversational spanish", budget_low: 100, budget_high: 200, zip: 33131, user_id: 5, digital: false)
user5.jobs.create!(name: "Cooking help", description: "Help me cook dinner for 10 people", budget_low: 50, budget_high: 100, zip: 33131, user_id: 5, digital: false)
user5.jobs.create!(name: "Website development", description: "Make me a dynamic website for my small business", budget_low: 500, budget_high: 1000, zip: 33131, user_id: 5, digital: true)
user5.jobs.create!(name: "Take me to work", description: "Take me to work every day this week", budget_low: 80, budget_high: 100, zip: 33131, user_id: 5, digital: false)

user6.jobs.create!(name: "Moving assistance", description: "Help me move", budget_low: 20, budget_high: 50, zip: 33131, user_id: 6, digital: false)
user6.jobs.create!(name: "Spanish tutor", description: "Teach me conversational spanish", budget_low: 100, budget_high: 200, zip: 33131, user_id: 6, digital: false)
user6.jobs.create!(name: "Cooking help", description: "Help me cook dinner for 10 people", budget_low: 50, budget_high: 100, zip: 33131, user_id: 6, digital: false)
user6.jobs.create!(name: "Website development", description: "Make me a dynamic website for my small business", budget_low: 500, budget_high: 1000, zip: 33131, user_id: 6, digital: true)
user6.jobs.create!(name: "Take me to work", description: "Take me to work every day this week", budget_low: 80, budget_high: 100, zip: 33131, user_id: 6, digital: false)

user7.jobs.create!(name: "Moving assistance", description: "Help me move", budget_low: 20, budget_high: 50, zip: 33131, user_id: 7, digital: false)
user7.jobs.create!(name: "Spanish tutor", description: "Teach me conversational spanish", budget_low: 100, budget_high: 200, zip: 33131, user_id: 7, digital: false)
user7.jobs.create!(name: "Cooking help", description: "Help me cook dinner for 10 people", budget_low: 50, budget_high: 100, zip: 33131, user_id: 7, digital: false)
user7.jobs.create!(name: "Website development", description: "Make me a dynamic website for my small business", budget_low: 500, budget_high: 1000, zip: 33131, user_id: 7, digital: true)
user7.jobs.create!(name: "Take me to work", description: "Take me to work every day this week", budget_low: 80, budget_high: 100, zip: 33131, user_id: 7, digital: false)

user8.jobs.create!(name: "Moving assistance", description: "Help me move", budget_low: 20, budget_high: 50, zip: 33131, user_id: 8, digital: false)
user8.jobs.create!(name: "Spanish tutor", description: "Teach me conversational spanish", budget_low: 100, budget_high: 200, zip: 33131, user_id: 8, digital: false)
user8.jobs.create!(name: "Cooking help", description: "Help me cook dinner for 10 people", budget_low: 50, budget_high: 100, zip: 33131, user_id: 8, digital: false)
user8.jobs.create!(name: "Website development", description: "Make me a dynamic website for my small business", budget_low: 500, budget_high: 1000, zip: 33131, user_id: 8, digital: true)
user8.jobs.create!(name: "Take me to work", description: "Take me to work every day this week", budget_low: 80, budget_high: 100, zip: 33131, user_id: 8, digital: false)

user9.jobs.create!(name: "Moving assistance", description: "Help me move", budget_low: 20, budget_high: 50, zip: 33131, user_id: 9, digital: false)
user9.jobs.create!(name: "Spanish tutor", description: "Teach me conversational spanish", budget_low: 100, budget_high: 200, zip: 33131, user_id: 9, digital: false)
user9.jobs.create!(name: "Cooking help", description: "Help me cook dinner for 10 people", budget_low: 50, budget_high: 100, zip: 33131, user_id: 9, digital: false)
user9.jobs.create!(name: "Website development", description: "Make me a dynamic website for my small business", budget_low: 500, budget_high: 1000, zip: 33131, user_id: 9, digital: true)
user9.jobs.create!(name: "Take me to work", description: "Take me to work every day this week", budget_low: 80, budget_high: 100, zip: 33131, user_id: 9, digital: false)

user10.jobs.create!(name: "Moving assistance", description: "Help me move", budget_low: 20, budget_high: 50, zip: 33131, user_id: 10, digital: false)
user10.jobs.create!(name: "Spanish tutor", description: "Teach me conversational spanish", budget_low: 100, budget_high: 200, zip: 33131, user_id: 10, digital: false)
user10.jobs.create!(name: "Cooking help", description: "Help me cook dinner for 10 people", budget_low: 50, budget_high: 100, zip: 33131, user_id: 10, digital: false)
user10.jobs.create!(name: "Website development", description: "Make me a dynamic website for my small business", budget_low: 500, budget_high: 1000, zip: 33131, user_id: 10, digital: true)
user10.jobs.create!(name: "Take me to work", description: "Take me to work every day this week", budget_low: 80, budget_high: 100, zip: 33131, user_id: 10, digital: false)
