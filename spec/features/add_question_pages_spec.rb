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
