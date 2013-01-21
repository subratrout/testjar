class HandBack < ActiveRecord::Base
  attr_accessible :email, :started_at, :test_id

  belongs_to :test
  has_many :answers

  def total_score
    answers.map(&:score).sum
  end
end
