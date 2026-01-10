class ResetPasswordTokenUniquiness < ActiveRecord::Migration[7.1]
  def change
    add_index :users, :reset_password_token, unique: true
  end
end
