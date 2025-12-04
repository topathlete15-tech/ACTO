class AddUniqueIndexToFavorites < ActiveRecord::Migration[7.1]
  def change
    add_index :favorites, [:user_id, :task_id], unique: true, name: "index_favorites_on_user_and_task", if_not_exists: true
  end
end


