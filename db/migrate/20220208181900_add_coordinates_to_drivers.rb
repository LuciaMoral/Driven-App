class AddCoordinatesToDrivers < ActiveRecord::Migration[6.1]
  def change
    add_column :drivers, :latitude, :float
    add_column :drivers, :longitude, :float
  end
end
