class AddGoodToAnswers < ActiveRecord::Migration[7.0]
  def change
    add_column :answers, :good, :integer, null: false, default:0
  end
end
