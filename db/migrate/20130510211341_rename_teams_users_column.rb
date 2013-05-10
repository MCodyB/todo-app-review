class RenameTeamsUsersColumn < ActiveRecord::Migration
  def change
    rename_column :teams_users, :teams_id, :team_id
    rename_column :teams_users, :users_id, :user_id
  end
end
