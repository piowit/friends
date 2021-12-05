class AddUserIdToFriendsses < ActiveRecord::Migration[6.1]
  def change
    add_column :friendsses, :user_id, :integer
    add_index :friendsses, :user_id
  end
end
