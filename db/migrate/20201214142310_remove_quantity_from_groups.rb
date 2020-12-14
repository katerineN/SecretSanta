class RemoveQuantityFromGroups < ActiveRecord::Migration[6.0]
  def change
    remove_column :groups, :quantity, :integer
  end
end
