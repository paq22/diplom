class CreateRightGroupPermitions < ActiveRecord::Migration[5.0]
  def change
    create_table :right_group_permitions do |t|
      t.references :permition, foreign_key: true
      t.references :group_right, foreign_key: true
      t.string :parameter,  null: false
  
      t.timestamps
    end
  end
end
