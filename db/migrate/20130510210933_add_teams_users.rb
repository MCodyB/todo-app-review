class AddTeamsUsers < ActiveRecord::Migration
  def change
    create_table :teams_users do |t|
      t.timestamps
      t.integer :users_id
      t.integer :teams_id
    end
  end
end
