require 'rails_helper'

describe "the add a question process" do
  it "adds a new question" do
    visit questions_path
    click_on "New Question"
    fill_in 'Title', :with => 'Install Node'
    fill_in 'Description', :with => 'Issues installing'
    fill_in 'Author', :with => 'A movie with Guy Ritchie'
    click_on 'Create Question'
    expect(page).to have_content 'Install Node'
  end
end

# describe "the update a question process" do
#   it "updates a question" do
#
#     question = Question.create(:title => 'Install Node', :description => 'Problem', :author => 'Joe Jones')
#     response = Response.create(:response => 'Download it', :name => 'Mary', :question_id => question.id)
#     visit question_path(question)
#     click_on "Update Question"
#     fill_in save_and_open_page
#     fill_in 'Description', :with => 'Issues installing'
#     fill_in 'Author', :with => 'A movie with Guy Ritchie'
#     click_on 'Update Question'
#     expect(page).to have_content "Install Node.js"
#   end
# end
