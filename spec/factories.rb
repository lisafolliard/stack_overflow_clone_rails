FactoryGirl.define do
  factory(:user) do
    email('joe@blow.com')
    password('password')
  end
end
