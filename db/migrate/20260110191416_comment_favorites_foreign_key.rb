class CommentFavoritesForeignKey < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :comment_favorites, :users
    add_foreign_key :comment_favorites, :comments
  end
end

