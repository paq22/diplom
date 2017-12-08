class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :ln,  null: false
      t.string :fn,  null: false
      t.string :sn
      t.date :bday,  null: false
      t.string :email,  null: false
      t.string :login,  null: false
      t.string :sex,  null: false

      t.index :email, unique: true
      t.index :login, unique: true
      t.timestamps
    end
      reversible do |dir|
        dir.up do
          execute("ALTER TABLE users ADD CONSTRAINT empty_chk CHECK(sex IN ('ж', 'м'))")
        end
        dir.down do
          execute("ALTER TABLE users DROP CONSTRAINT empty_chk")
        end
      end
  end
end
