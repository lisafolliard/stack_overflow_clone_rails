class Question < ActiveRecord::Base
  validates :title, :presence => true
  validates :description, :presence => true
  validates :author, :presence => true

  has_many :responses
end
