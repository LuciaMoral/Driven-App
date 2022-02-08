class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :driver, null: false, foreign_key: true
      t.boolean :status, default: true

      t.timestamps
    end
  end
end
