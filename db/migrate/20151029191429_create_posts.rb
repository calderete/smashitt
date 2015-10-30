class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.text :url #this was changed from :content originally.
      t.text :title
      t.timestamps null: false
    end
  end
end
