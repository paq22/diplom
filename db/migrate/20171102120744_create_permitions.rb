class CreatePermitions < ActiveRecord::Migration[5.0]
  def change
    create_table :permitions do |t|
      t.string :act,  null: false
      t.references :information_system, foreign_key: true
      t.string :parameter,  null: false

      t.timestamps
    end
  end
end
