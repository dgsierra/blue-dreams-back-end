class ChangeColumnDefaultUsersLicense < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :license, from: nil, to: false
  end
end
