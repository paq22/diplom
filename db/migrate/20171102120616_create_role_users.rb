class CreateRoleUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :role_users do |t|
      t.references :user, foreign_key: true
      t.references :role, foreign_key: true
      t.references :information_system, foreign_key: true
      t.string :parameter,  null: false

      t.timestamps
    end
  end
end
