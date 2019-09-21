class User < ApplicationRecord
  belongs_to :medicine

  has_many :medicines, dependent: :destroy

  validates :name, presence: true
  validates :email, format: {with: /(\S+)@(\S+)/}

end
