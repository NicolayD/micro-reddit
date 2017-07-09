class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.text :body
      t.integer :points

      t.timestamps
    end

    add_column :posts, :points, :integer
  end
end
