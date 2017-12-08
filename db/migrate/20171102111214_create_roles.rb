class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :notation,  null: false
      t.string :name,  null: false
      t.string :short_name,  null: false
      t.string :description

      t.index :notation, unique: true
      t.index :name, unique: true
      t.index :short_name, unique: true
      t.timestamps
    end
  end
end




