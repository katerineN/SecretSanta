class InitialMigration < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.integer :password
      t.datetime :date
      t.integer :quantity
      t.timestamps
    end
  end
end
