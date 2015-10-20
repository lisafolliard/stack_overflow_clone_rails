require 'rails_helper'

describe "the delete a question process" do
  it "deletes a question" do
    question = Question.create(:title => 'Install Node', :description => 'Problem', :author => 'Joe Jones')
    response = Response.create(:response => 'Download it', :name => 'Mary', :question_id => question.id)
    visit question_path(question)
    click_on 'Delete Question'
    expect(page).to_not have_content 'Big Bike'
  end
end
