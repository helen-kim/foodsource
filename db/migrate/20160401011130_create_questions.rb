class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.datetime :time_posted
      t.integer :expertise
      t.integer :time_range
      t.string :ingredients
      t.string :occasion
      t.text :notes

      t.timestamps null: false
    end
  end
end
