class Type < ApplicationRecord

    validates :name, presence: true, uniqueness: true

    has_many :classifications, dependent: :destroy
    has_many :medicines, through: :classifications
end
