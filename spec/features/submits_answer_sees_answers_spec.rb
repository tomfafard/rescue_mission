require 'rails_helper'

feature "submits answer" do
  scenario "user submits an answer successfully" do
    question = Question.create(title: "This is a question................... What is ruby on rails?",description:"AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")


    visit questions_path
    click_link question.title
    page.fill_in 'Submit Answer Below.', :with => "This answer happens to be at least 50(fifty) characters long!!"
    click_button "Submit Answer"
    expect(page).to have_content("This answer happens to be at least 50(fifty) characters long!!")
  end

  scenario "user submits an answer unsuccessfully" do
    question = Question.create(title: "This is a question................... What is ruby on rails?",description:"AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")


    visit questions_path
    click_link question.title
    page.fill_in 'Submit Answer Below.', :with => "This answer is less than 50 characters long :("
    click_button "Submit Answer"

    expect(page).to have_content("Your answer is weak.")
  end
end


feature "sees answers" do
  scenario "see all the answers to a question" do
    question = Question.create(title: "This is a question................... What is ruby on rails?",description:"AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
    answer = Answer.create(description: "This answer happens to be at least 50(fifty) characters long!!", question_id: 1)
    another_answer = Answer.create(description: "This answer ALSO happens to be at least 50(fifty) characters long!!", question_id: 1)

    visit questions_path
    click_link question.title
    page.fill_in 'Submit Answer Below.', :with => answer.description
    click_button "Submit Answer"
    page.fill_in 'Submit Answer Below.', :with => another_answer.description
    click_button "Submit Answer"
    expect(page).to have_content(answer.description)
    expect(page).to have_content(another_answer.description)
  end
end
