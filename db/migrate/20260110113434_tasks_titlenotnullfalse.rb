class TasksTitlenotnullfalse < ActiveRecord::Migration[7.1]
  def up
    change_column_null :tasks, :title ,false
  end

  def down
    change_column_null :tasks, :title ,true
  end
end
