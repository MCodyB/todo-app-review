class AddItem < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.timestamps
      t.integer :project_id
      t.string :title
      t.text :description
    end
  end
end
