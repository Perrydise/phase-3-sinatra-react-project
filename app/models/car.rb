class Car < ActiveRecord::Base
    belongs_to :dealership
    def self.by_price
        self.all.oder(price: :desc)
    end

end
