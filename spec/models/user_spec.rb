require 'rails_helper'

describe User do
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
  it { should have_many :questions }
  it { should have_many :responses }

  it 'returns correct email' do
    user = FactoryGirl.create(:user)
    user.email.should eq 'joe@blow.com'
  end

  it 'returns correct password' do
    user = FactoryGirl.create(:user)
    user.password.should eq 'password'
  end

  it 'can authenticate a user' do
    user = FactoryGirl.create(:user)
    User.authenticate(user.email, user.password).should eq user
  end

  it 'returns nil if authentication fails' do
    user = FactoryGirl.create(:user)
    User.authenticate('foo@bar.com', user.password).should eq nil
    User.authenticate(user.email, 'foo').should eq nil
  end

end
