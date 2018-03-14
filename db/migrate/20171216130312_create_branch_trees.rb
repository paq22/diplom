class CreateBranchTrees < ActiveRecord::Migration[5.0]
  def change
    create_table :branch_trees do |t|
      t.string :full_name
      t.string :name
      t.string :digital_name
      t.string :address
      t.references :branch_tree, foreign_key: true
      t.string :level

      t.timestamps
    end
  end
end
