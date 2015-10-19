class Response < ActiveRecord::Base
  validates :response, :presence => true
  validates :name, :presence => true

  belongs_to :question

end
