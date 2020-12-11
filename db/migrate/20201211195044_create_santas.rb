class CreateSantas < ActiveRecord::Migration[6.0]
  def change
    create_table :santas do |t|
      t.integer :id_group
      t.integer :id_sender
      t.integer :id_receiver
    end
  end
end
