require 'rails_helper'

describe "the add a response process" do
  it "adds a new response to question" do
    visit questions_path
    click_on "New Question"
    fill_in 'Title', :with => 'Install Node'
    fill_in 'Description', :with => 'Issues installing'
    fill_in 'Author', :with => 'A movie with Guy Ritchie'
    click_on 'Create Question'
    click_on 'Install Node'
    click_on 'Add a response'
    fill_in "Response", :with => "Download"
    fill_in "Name", :with => 'Joe Jones'
    click_on 'Create Response'
    expect(page).to have_content 'Download'
  end
end
