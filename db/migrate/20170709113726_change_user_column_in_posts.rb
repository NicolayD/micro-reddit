class ChangeUserColumnInPosts < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :username_id, :user_id
  end
end
