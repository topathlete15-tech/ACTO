class AddSpecColumnsToUsersAndTasks < ActiveRecord::Migration[7.1]
  def change
    # tasks table - add category reference (nullable for now so既存データを壊さない)
    add_column :tasks, :category_id, :integer
    add_index :tasks, :category_id

    # users table - 仕様にある追加カラム
    add_column :users, :profile_image_id, :integer
    add_column :users, :user_name, :string
    add_column :users, :profile, :text

    # 既存の簡易認証は password_digest を利用しているが、
    # 仕様上のカラムも一応追加しておく（アプリ側ではまだ利用しない）
    add_column :users, :encrypted_password, :string
    add_column :users, :reset_password_token, :string
    add_column :users, :reset_password_sent_at, :datetime
    add_column :users, :remember_created_at, :datetime

    add_index :users, :user_name, unique: true, if_not_exists: true
    add_index :users, :email, unique: true, if_not_exists: true
  end
end


