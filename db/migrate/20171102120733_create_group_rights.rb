class CreateGroupRights < ActiveRecord::Migration[5.0]
  def change
    create_table :group_rights do |t|
      t.references :information_system, foreign_key: true
      t.string :group_name,  null: false
      t.string :parameter,  null: false
  
      t.index :group_name, unique: true
      t.timestamps
    end
  end
end
