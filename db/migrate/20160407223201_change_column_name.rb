class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :questions, :expertise, :difficulty_level
  end
end
