class CreateDictionaryAccesses < ActiveRecord::Migration[5.0]
  def change
    create_table :dictionary_accesses do |t|
      t.references :information_system, foreign_key: true
      t.string :name,  null: false
      t.string :access_key,  null: false
      
      t.index :name, unique: true
      t.index :access_key, unique: true
      t.timestamps
    end
  end
end


