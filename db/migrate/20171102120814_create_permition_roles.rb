class CreatePermitionRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :permition_roles do |t|
      t.references :role, foreign_key: true
      t.references :permition, foreign_key: true
      t.string :parameter,  null: false
      
      t.timestamps
    end
  end
end
