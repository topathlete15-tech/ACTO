class Tasksdescriptionnotnullfalse < ActiveRecord::Migration[7.1]
  def up
    change_column_null :tasks, :description ,false
  end

  def down
    change_column_null :tasks, :description ,true 
  end

end
