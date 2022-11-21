class AddIdToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column(:cars, :dealership_id, :integer)
  end
end
