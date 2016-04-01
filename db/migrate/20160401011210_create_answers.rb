class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.datetime :time_answered
      t.text :text
      t.integer :vote
      t.integer :question_id

      t.timestamps null: false
    end
  end
end
