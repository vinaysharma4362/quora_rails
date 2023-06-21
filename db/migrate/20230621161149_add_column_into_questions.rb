class AddColumnIntoQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :topic_ids, :integer, array: true
  end
end
