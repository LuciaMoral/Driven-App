class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :license_type
      t.integer :years_driving
      t.string :transmission
      t.boolean :availability
      t.string :location
      t.integer :price

      t.timestamps
    end
  end
end
