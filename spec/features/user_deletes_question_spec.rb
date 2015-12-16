require 'rails_helper'

feature "sees question deletes question" do
  scenario "user can delete a question" do
    question = Question.create(title: "This is a question................... What is ruby on rails?",description:"AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
    another_question = Question.create(title: "This is a question...................model, view, controller?",description:"AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")

    visit questions_path
    click_link question.title
    click_button "Edit Question"
    click_button "Delete Question"

    expect(page).to_not have_content("This is a question................... What is ruby on rails?")
  end
end
