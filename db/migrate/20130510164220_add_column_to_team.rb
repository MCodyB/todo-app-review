class AddColumnToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :title, :string
  end
end
