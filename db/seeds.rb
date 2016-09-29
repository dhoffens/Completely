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

#jobs
#user1 jobs
job1 = user1.jobs.create!(name: "Moving assistance", description: "Help me move", budget_low: 20, budget_high: 50, address: "American Airlines Arena, Miami, FL", user_id: 1)
job2 = user1.jobs.create!(name: "Spanish tutor", description: "Teach me conversational spanish", budget_low: 100, budget_high: 200, address: "Wynwood, Miami, FL", user_id: 1)
job3 = user1.jobs.create!(name: "Cooking help", description: "Help me cook dinner for 10 people", budget_low: 50, budget_high: 100, address: "Crandon Park, Key Biscayne", user_id: 1)
job4 = user1.jobs.create!(name: "Website development", description: "Make me a dynamic website for my small business", budget_low: 500, budget_high: 1000, address: "Brickell, Miami, FL", user_id: 1)
job5 = user1.jobs.create!(name: "Take me to work", description: "Take me to work every day this week", budget_low: 80, budget_high: 100, address: "Coral Gables, FL", user_id: 1)
#user2 jobs
job6 = user2.jobs.create!(name: "Moving assistance", description: "Help me move", budget_low: 20, budget_high: 50, address: "American Airlines Arena, Miami, FL", user_id: 1)
job7 = user2.jobs.create!(name: "Spanish tutor", description: "Teach me conversational spanish", budget_low: 100, budget_high: 200, address: "Wynwood, Miami, FL", user_id: 1)
job8 = user2.jobs.create!(name: "Cooking help", description: "Help me cook dinner for 10 people", budget_low: 50, budget_high: 100, address: "Crandon Park, Key Biscayne", user_id: 1)
job9 = user2.jobs.create!(name: "Website development", description: "Make me a dynamic website for my small business", budget_low: 500, budget_high: 1000, address: "Brickell, Miami, FL", user_id: 1)
job10 = user2.jobs.create!(name: "Take me to work", description: "Take me to work every day this week", budget_low: 80, budget_high: 100, address: "Coral Gables, FL", user_id: 1)
#user3 jobs
job11 = user3.jobs.create!(name: "Moving assistance", description: "Help me move", budget_low: 20, budget_high: 50, address: "American Airlines Arena, Miami, FL", user_id: 1)
job12 = user3.jobs.create!(name: "Spanish tutor", description: "Teach me conversational spanish", budget_low: 100, budget_high: 200, address: "Wynwood, Miami, FL", user_id: 1)
job13 = user3.jobs.create!(name: "Cooking help", description: "Help me cook dinner for 10 people", budget_low: 50, budget_high: 100, address: "Crandon Park, Key Biscayne", user_id: 1)
job14 = user3.jobs.create!(name: "Website development", description: "Make me a dynamic website for my small business", budget_low: 500, budget_high: 1000, address: "Brickell, Miami, FL", user_id: 1)
job15 = user3.jobs.create!(name: "Take me to work", description: "Take me to work every day this week", budget_low: 80, budget_high: 100, address: "Coral Gables, FL", user_id: 1)
#user4 jobs
job16 = user4.jobs.create!(name: "Moving assistance", description: "Help me move", budget_low: 20, budget_high: 50, address: "American Airlines Arena, Miami, FL", user_id: 1)
job17 = user4.jobs.create!(name: "Spanish tutor", description: "Teach me conversational spanish", budget_low: 100, budget_high: 200, address: "Wynwood, Miami, FL", user_id: 1)
job18 = user4.jobs.create!(name: "Cooking help", description: "Help me cook dinner for 10 people", budget_low: 50, budget_high: 100, address: "Crandon Park, Key Biscayne", user_id: 1)
job19 = user4.jobs.create!(name: "Website development", description: "Make me a dynamic website for my small business", budget_low: 500, budget_high: 1000, address: "Brickell, Miami, FL", user_id: 1)
job20 = user4.jobs.create!(name: "Take me to work", description: "Take me to work every day this week", budget_low: 80, budget_high: 100, address: "Coral Gables, FL", user_id: 1)
#user5 jobs
job21 = user5.jobs.create!(name: "Moving assistance", description: "Help me move", budget_low: 20, budget_high: 50, address: "American Airlines Arena, Miami, FL", user_id: 1)
job22 = user5.jobs.create!(name: "Spanish tutor", description: "Teach me conversational spanish", budget_low: 100, budget_high: 200, address: "Wynwood, Miami, FL", user_id: 1)
job23 = user5.jobs.create!(name: "Cooking help", description: "Help me cook dinner for 10 people", budget_low: 50, budget_high: 100, address: "Crandon Park, Key Biscayne", user_id: 1)
job24 = user5.jobs.create!(name: "Website development", description: "Make me a dynamic website for my small business", budget_low: 500, budget_high: 1000, address: "Brickell, Miami, FL", user_id: 1)
job25 = user5.jobs.create!(name: "Take me to work", description: "Take me to work every day this week", budget_low: 80, budget_high: 100, address: "Coral Gables, FL", user_id: 1)

#comments 

job1.comments.create!(job_id: 1, message: "first!")
job1.comments.create!(job_id: 1, message: "second!")

job2.comments.create!(job_id: 2, message: "first!")
job2.comments.create!(job_id: 2, message: "second!")

job3.comments.create!(job_id: 3, message: "first!")
job3.comments.create!(job_id: 3, message: "second!")

job4.comments.create!(job_id: 4, message: "first!")
job4.comments.create!(job_id: 4, message: "second!")

job5.comments.create!(job_id: 5, message: "first!")
job5.comments.create!(job_id: 5, message: "second!")

job6.comments.create!(job_id: 6, message: "first!")
job6.comments.create!(job_id: 6, message: "second!")

job7.comments.create!(job_id: 7, message: "first!")
job7.comments.create!(job_id: 7, message: "second!")

job8.comments.create!(job_id: 8, message: "first!")
job8.comments.create!(job_id: 8, message: "second!")

job9.comments.create!(job_id: 9, message: "first!")
job9.comments.create!(job_id: 9, message: "second!")

job10.comments.create!(job_id: 10, message: "first!")
job10.comments.create!(job_id: 10, message: "second!")