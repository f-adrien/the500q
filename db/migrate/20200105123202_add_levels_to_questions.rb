class AddLevelsToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :fun_level, :integer
    add_column :questions, :intimacy_level, :integer
  end
end
