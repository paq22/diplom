class CreateInformationSystems < ActiveRecord::Migration[5.0]
  def change
    create_table :information_systems do |t|
      t.string :name,  null: false
      t.string :link,  null: false
      t.string :access_key,  null: false

      t.index :name, unique: true
      t.index :access_key, unique: true
      t.timestamps
    end
  end
end
