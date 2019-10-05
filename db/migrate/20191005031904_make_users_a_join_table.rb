class MakeUsersAJoinTable < ActiveRecord::Migration[5.2]
  def up
      Medicine.delete_all
      add_column :medicines, :user_id, :integer
  end

  def down
      User.delete_all
      remove_column :medicines, :user_id
  end
end
