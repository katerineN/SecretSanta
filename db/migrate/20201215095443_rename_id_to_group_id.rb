class RenameIdToGroupId < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :id_group, :group_id
  end
end
