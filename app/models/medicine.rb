class Medicine < ApplicationRecord

    validates :name, presence: true
    validates :rx_number, :rx_number2, numericality:{only_integer: true}
    
end
