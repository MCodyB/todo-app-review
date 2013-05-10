class RenameTMemberships < ActiveRecord::Migration
  def change
    rename_table :t_membership, :t_memberships
  end
end
