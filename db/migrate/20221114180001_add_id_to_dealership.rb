class AddIdToDealership < ActiveRecord::Migration[6.1]
  def change
    change_column(:cars, :dealership_id, :string)
  end
end
