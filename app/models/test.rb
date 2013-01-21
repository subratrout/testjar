class Test < ActiveRecord::Base
  attr_accessible :description, :title, :user_id

  belongs_to :user
  has_many :questions

  validates :user_id, presence: true
end
