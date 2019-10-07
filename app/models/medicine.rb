class Medicine < ApplicationRecord

    validates :name, presence: true
    validates :rx_number, :rx_number2, numericality:{only_integer: true}

    has_many :takes, dependent: :destroy
    has_many :takers, through: :takes, source: :user
end
