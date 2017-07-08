class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.datetime :submitted_at
      t.belongs_to :username, index: true

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
