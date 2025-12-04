class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :task
  has_many :comment_favorites, dependent: :destroy
end

