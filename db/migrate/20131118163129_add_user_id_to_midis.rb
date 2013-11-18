class AddUserIdToMidis < ActiveRecord::Migration
  def change
    add_column :midis, :user_id, :integer
    add_index :midis, :user_id
  end
end
