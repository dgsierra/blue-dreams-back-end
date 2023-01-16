class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :ship, null: false, foreign_key: true
      t.date :date_start
      t.date :date_end
      t.bigint :total
      t.bigint :duration
      t.bigint :deposit
      t.boolean :insurance

      t.timestamps
    end
  end
end
