class Choice < ActiveRecord::Base
  attr_accessible :correct, :position, :question_id, :score, :title

  belongs_to :question
end
