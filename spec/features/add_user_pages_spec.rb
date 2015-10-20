require 'rails_helper'

describe 'add a user process' do
  it 'can add a user' do
    visit new_user_path
    click_on 'Sign Up'
    fill_in 'Email', :with => 'joe@blow.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_button 'Click Here'
    expect(page).to have_content 'joe@blow.com' # takes user to sign in page
  end


  it 'displays errors when the form is incomplete' do
    visit new_user_path
    click_on 'Sign Up'
    click_button 'Click Here'
    expect(page).to have_content "There was a problem creating your account"
  end

  # it 'allows a user to log in' do
  #   visit '/'
  #   click_on "Log In"
  #   fill_in 'Email', :with => 'bob@bob.com'
  #   fill_in 'Password', :with => '55555'
  #   click_button "Log in"
  #   expect(page).to have_content 'logged in'
  # end

  it 'displays error if user does not log in correctly' do
    visit new_user_path
    click_on "Log In"
    fill_in 'Email', :with => 'joe@blow.com'
    fill_in 'Password', :with => ''
    click_button "Log in"
    expect(page).to have_content 'There was a problem logging you in'
  end
end
