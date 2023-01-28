class ChangeDataTypeForShip < ActiveRecord::Migration[7.0]
  def change
      change_column :ships, :image, :string
  end
end
