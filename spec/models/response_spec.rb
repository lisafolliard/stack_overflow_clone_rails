require 'rails_helper'

describe Response do
  it { should validate_presence_of :response }
  it { should validate_presence_of :name }

  it { should belong_to :question }
  it { should belong_to :user }
end
