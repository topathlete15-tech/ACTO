class TasksCategoryIdForeginKey < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :tasks, :categories, column: :category_id 
  end
end
