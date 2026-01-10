class RelationshipsForeignKey < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :relationships, :users, column: :follower_id
    add_foreign_key :relationships, :users, column: :followed_id
  end
end
