class Question < ActiveRecord::Base
  attr_accessible :position, :test_id, :title

  belongs_to :test
  has_many :choices
end
