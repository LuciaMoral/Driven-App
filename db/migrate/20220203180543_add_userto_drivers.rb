class AddUsertoDrivers < ActiveRecord::Migration[6.1]
  def change
    add_reference :drivers, :user, foreign_key: true
  end
end
