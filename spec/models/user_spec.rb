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

end
