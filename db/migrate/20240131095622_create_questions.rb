class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.text :prompt
      t.string :answer

      t.timestamps
    end
  end
end
