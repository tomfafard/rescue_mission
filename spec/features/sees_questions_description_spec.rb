require 'rails_helper'

feature "sees description" do
  scenario "see the question's description" do
    question = Question.create(title: "This is a question................... What is ruby on rails?",description:"AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
    another_question = Question.create(title: "This is a question...................model, view, controller?",description:"AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")

    visit questions_path
    click_link "This is a question................... What is ruby on rails?"
    expect(page).to have_content(question.title)
    expect(page).to have_content(question.description)
  end
end
