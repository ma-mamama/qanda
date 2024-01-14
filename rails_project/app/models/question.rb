class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  belongs_to :user, optional: true

  validates :title, presence: true
  validates :name, presence: true
  validates :content, presence: true, length: { minimum: 5 }

  def best_answer
    if self.bestanswer_id.nil?
      return nil
    end
    Answer.find(self.bestanswer_id)
  end
end
