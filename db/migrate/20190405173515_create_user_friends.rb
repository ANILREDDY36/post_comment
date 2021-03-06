class CreateUserFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :user_friends do |t|
      t.integer :user_id
      t.integer :friend_id
      t.boolean :is_accepted, default: false

      t.timestamps
    end
  end
end
