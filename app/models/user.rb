class User < ApplicationRecord
  has_secure_password
  has_many :medicines, dependent: :destroy
  has_many :takes, dependent: :destroy
  has_many :taken_medicines, through: :takes, source: :medicine

  validates :name, presence: true
  validates :email, presence: true,
    format: /\A\S+@\S+\z/,
    uniqueness: { case_sensitive: false }

    def self.authenticate(email, password)
        user = User.find_by(email: email)
        user && user.authenticate(password)
    end

end
