class AddNameOfDealer < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :dealership_name, :string
  end
end
