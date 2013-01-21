class Answer < ActiveRecord::Base
  attr_accessible :choice_id, :hand_back_id, :question_id

  belongs_to :hand_back
  belongs_to :choice
  belongs_to :question # redundant but simplifies queries

  def score
    # an answer has a reference to a score. we simply can return
    # the score of that choice (which is defined by the teacher)
    choice.score
  end
end
