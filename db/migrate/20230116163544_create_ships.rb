class CreateShips < ActiveRecord::Migration[7.0]
  def change
    create_table :ships do |t|
      t.string :name
      t.bigint :capacity
      t.bigint :image
      t.bigint :price
      t.boolean :availability
      t.boolean :sale
      t.bigint :price_sale

      t.timestamps
    end
  end
end
