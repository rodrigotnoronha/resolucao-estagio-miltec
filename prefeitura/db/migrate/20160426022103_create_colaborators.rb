class CreateColaborators < ActiveRecord::Migration
  def change
    create_table :colaborators do |t|
      t.string :name
      t.integer :idade
      t.float :salario

      t.timestamps null: false
    end
  end
end
