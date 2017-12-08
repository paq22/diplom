class CreateRoleGroupRights < ActiveRecord::Migration[5.0]
  def change
    create_table :role_group_rights do |t|
      t.references :role, foreign_key: true
      t.references :group_right, foreign_key: true
      t.string :parameter,  null: false

      t.timestamps
    end
  end
end
