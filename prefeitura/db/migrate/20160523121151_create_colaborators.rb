class CreateColaborators < ActiveRecord::Migration
  def change
    create_table :colaborators do |t|
      t.string :name
      t.integer :age
      t.float :salary

      t.timestamps null: false
    end
  end
end
