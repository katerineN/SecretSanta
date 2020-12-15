class RenameIdToOtherId < ActiveRecord::Migration[6.0]
  def change
    rename_column :santas, :id_group, :group_id
    rename_column :santas, :id_sender, :sender_id
    rename_column :santas, :id_receiver, :receiver_id
  end
end
