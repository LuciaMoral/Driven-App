class AddNameToDrivers < ActiveRecord::Migration[6.1]
  def change
    add_column :drivers, :name, :string
  end
end
