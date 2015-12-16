# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Question.create(title: "Is this question forty characters yet? I don't know, Who knows how many characters this is..?", description: "1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ")
Question.create(title: "This is the second questions and the only reason I'm asking it is to make a question with 40 characters?", description: "1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ")
Question.create(title: "These questions don't have much relevance to anything, especially their description, blah blah blah...?", description: "1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ")
Question.create(title: "This is the forth question of the questions that are listed on this fine webpage? Made by Tom and Ryan?", description: "1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 ABCDEFGHIJKLMNOPQRSTUVWXYZ")
Question.create(title: "Am I submitting a new question or what? This site's awesome!", description: "BUT not as good as movie db, BUT not as good as movie db, BUT not as good as movie db, BUT not as good as movie db, BUT not as good as movie db, BUT not as good as movie db, BUT not as good as movie db, BUT not as good as movie db, BUT not as good as movie db, BUT not as good as movie db, BUT not as good as movie db, BUT not as good as movie db, BUT not as good as movie db, BUT not as good as movie db, BUT not as good as movie db, BUT not as good as movie db!")


Answer.create(description: "Here's your answer. 50 character limit sucks. What a lame website.", question_id: 1)
Answer.create(description: "Here's your answer. 50 character limit sucks. What a lame website. Nerd.", question_id: 1)
Answer.create(description: "TROLL LOLOLOL TROLL LOLOLOL TROLL LOLOLOL TROLL LOLOLOL TROLL LOLOLOL TROLL LOLOLOL TROLL LOLOLOL TROLL LOLOLOL", question_id: 5)
Answer.create(description: "WE can submit multiple answers and it won't look bad. This should probably be more characters.", question_id: 5)
