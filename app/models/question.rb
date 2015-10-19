class Question < ActiveRecord::Base
  validates :title, :presence => true
  validates :description, :presence => true
  validates :author, :presence => true

  belongs_to :user
  has_many :responses
end
