class ChangeColumnInGroup < ActiveRecord::Migration[6.0]
  def change
    change_column(:groups, :password, :string)
  end
end
