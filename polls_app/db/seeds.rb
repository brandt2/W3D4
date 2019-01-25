# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(username: "Rudy")
user2 = User.create!(username: "Brandon")
user3 = User.create!(username: "Cactus")
user4 = User.create!(username: "Squidward")

poll1 = Poll.create!(user_id: user1.id, title: 'Favorites!')
poll2 = Poll.create!(user_id: user1.id, title: 'Games!')
poll3 = Poll.create!(user_id: user1.id, title: 'Pets!')

question1 = Question.create!(text: "What is your favorite food?", poll_id: poll1.id)
question2 = Question.create!(text: "What is your favorite color?", poll_id: poll1.id)

question3 = Question.create!(text: "What is your favorite game?", poll_id: poll2.id)
question4 = Question.create!(text: "What is your favorite genre?", poll_id: poll2.id)

question5 = Question.create!(text: "Do you like pets?", poll_id: poll3.id)
question6 = Question.create!(text: "Do you have a pet?", poll_id: poll3.id)

answer_choice1 = AnswerChoice.create!(question_id: question1.id, text: 'Burger')
answer_choice2 = AnswerChoice.create!(question_id: question1.id, text: 'Pizza')

answer_choice3 = AnswerChoice.create!(question_id: question2.id, text: 'Red')
answer_choice4 = AnswerChoice.create!(question_id: question2.id, text: 'Blue')

answer_choice5 = AnswerChoice.create!(question_id: question3.id, text: 'Resident Evil 2')
answer_choice6 = AnswerChoice.create!(question_id: question3.id, text: 'Monster Hunter World')

answer_choice7 = AnswerChoice.create!(question_id: question4.id, text: 'Action')
answer_choice8 = AnswerChoice.create!(question_id: question4.id, text: 'Shooter')

answer_choice9 = AnswerChoice.create!(question_id: question5.id, text: 'Yes')
answer_choice10 = AnswerChoice.create!(question_id: question5.id, text: 'No')

answer_choice11 = AnswerChoice.create!(question_id: question6.id, text: 'Yes')
answer_choice12 = AnswerChoice.create!(question_id: question6.id, text: 'No')

response1 = Response.create!(question_id: question1.id, answer_choice_id: answer_choice1.id, user_id: user1.id)
response2 = Response.create!(question_id: question2.id, answer_choice_id: answer_choice4.id, user_id: user1.id)
response3 = Response.create!(question_id: question3.id, answer_choice_id: answer_choice6.id, user_id: user2.id)
response4 = Response.create!(question_id: question4.id, answer_choice_id: answer_choice7.id, user_id: user2.id)
