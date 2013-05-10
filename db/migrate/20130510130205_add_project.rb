class AddProject < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.timestamps
      t.integer :team_id
    end
  end
end
