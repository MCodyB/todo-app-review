class AddTeam < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.timestamps
      t.integer :t_membership_id
    end
  end
end
