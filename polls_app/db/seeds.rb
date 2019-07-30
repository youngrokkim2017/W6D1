# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: Sta'r Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Response.destroy_all
AnswerChoice.destroy_all
Question.destroy_all
Poll.destroy_all
User.destroy_all

# User.create([{ username: 'Bob' }, { username: 'Frank' }, {username: 'Joe'}])

user_1 = User.create(username: 'Forrest')
user_2 = User.create(username: 'Bubba')
user_3 = User.create(username: 'Jenny')

poll_1 = Poll.create(title: 'Favorite food', user_id: user_1.id)
poll_2 = Poll.create(title: 'Favorite drink', user_id: user_2.id)
poll_3 = Poll.create(title: 'Favorite movie', user_id: user_3.id)

question_1 = Question.create(text: 'What is your favorite food?', poll_id: poll_1.id)
question_2 = Question.create(text: 'What is your favorite drink?', poll_id: poll_2.id)
question_3 = Question.create(text: 'What is your favorite movie?', poll_id: poll_3.id)

answer_choice_1 = AnswerChoice.create(body: 'Donuts', question_id: question_1.id)
answer_choice_2 = AnswerChoice.create(body: 'Pizza', question_id:  question_1.id)
answer_choice_3 = AnswerChoice.create(body: 'Chicken braised in white wine', question_id:  question_1.id)
answer_choice_4 = AnswerChoice.create(body: 'light roast coffee', question_id: question_2.id)
answer_choice_5 = AnswerChoice.create(body: 'medium roast coffee', question_id:  question_2.id)
answer_choice_6 = AnswerChoice.create(body: 'dark roast coffee', question_id:  question_2.id)
answer_choice_7 = AnswerChoice.create(body: 'Star Wars', question_id:  question_3.id)
answer_choice_8 = AnswerChoice.create(body: 'Avengers', question_id: question_3.id)
answer_choice_9 = AnswerChoice.create(body: 'Forrest Gump', question_id: question_3.id)


response_1 = Response.create(user_id: user_1.id, answer_choice_id: answer_choice_1.id)
response_2 = Response.create(user_id: user_1.id, answer_choice_id: answer_choice_4.id)
response_3 = Response.create(user_id: user_1.id, answer_choice_id: answer_choice_7.id)
response_4 = Response.create(user_id: user_2.id, answer_choice_id: answer_choice_2.id)
response_5 = Response.create(user_id: user_2.id, answer_choice_id: answer_choice_5.id)
response_6 = Response.create(user_id: user_2.id, answer_choice_id: answer_choice_8.id)
response_7 = Response.create(user_id: user_3.id, answer_choice_id: answer_choice_3.id)
response_8 = Response.create(user_id: user_3.id, answer_choice_id: answer_choice_6.id)
response_9 = Response.create(user_id: user_3.id, answer_choice_id: answer_choice_9.id)