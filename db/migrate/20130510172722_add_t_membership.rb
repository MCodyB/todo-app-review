class AddTMembership < ActiveRecord::Migration
  def change
    create_table :t_membership do |t|
      t.timestamps
      t.integer :user_id
      t.integer :team_id
    end
  end
end
