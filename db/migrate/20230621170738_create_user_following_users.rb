class CreateUserFollowingUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :user_following_users do |t|
      t.integer :follower_id 
      t.integer :followee_id

      t.timestamps
    end

    add_index :user_following_users, [:follower_id, :followee_id], unique: true

  end
end
