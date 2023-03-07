class AddBestAnswerIdToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :bestanswer_id, :integer
  end
end
