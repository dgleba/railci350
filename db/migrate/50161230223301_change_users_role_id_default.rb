class ChangeUsersRoleIdDefault < ActiveRecord::Migration

  def change
  change_column :users, :role_id, :integer, :default => 1
  
  rename_table :users, :users_rr
  rename_table :roles, :roles_rr

  end
  
end
