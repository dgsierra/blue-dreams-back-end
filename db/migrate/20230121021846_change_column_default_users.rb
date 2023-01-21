class ChangeColumnDefaultUsers < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :admin, from: nil, to: false
  end
end
