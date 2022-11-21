class CreateDealerships < ActiveRecord::Migration[6.1]
  def change
    create_table :dealerships do |t| 
      t.string :name
    end
  end
end
