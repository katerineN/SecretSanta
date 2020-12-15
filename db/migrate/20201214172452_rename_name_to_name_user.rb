class RenameNameToNameUser < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :name, :name_user
  end
end
