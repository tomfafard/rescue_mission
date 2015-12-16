require 'rails_helper'

feature "sees flash message" do
  scenario "submits question that is too short" do

    visit questions_path
    click_link "Submit new question"
    page.fill_in 'Title', :with => 'bob'
    page.fill_in 'Submit Question Below.', :with => 'loblaw'
    click_button "Submit Question"

    expect(page).to have_content("Your question is weak.")
  end

  scenario "submits answer that is too short" do
    question = Question.create(title: "This is a question................... What is ruby on rails?",description:"AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
    another_question = Question.create(title: "This is a question...................model, view, controller?",description:"AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")

    visit questions_path
    click_link "This is a question................... What is ruby on rails?"
    page.fill_in 'Submit Answer Below.', :with => 'blah'
    click_button "Submit Answer"

    expect(page).to have_content("Your answer is weak.")
  end
end
