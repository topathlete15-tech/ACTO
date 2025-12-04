class CreateCommentFavorites < ActiveRecord::Migration[7.1]
  def change
    create_table :comment_favorites do |t|
      t.integer :user_id, null: false
      t.integer :comment_id, null: false

      t.timestamps
    end

    add_index :comment_favorites, :user_id
    add_index :comment_favorites, :comment_id
    add_index :comment_favorites, [:user_id, :comment_id], unique: true, name: "index_comment_favorites_on_user_and_comment"
  end
end


