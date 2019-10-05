class Medicine < ApplicationRecord

    belongs_to :user

    validates :name, presence: true
    validates :rx_number, :rx_number2, numericality:{only_integer: true}

end
