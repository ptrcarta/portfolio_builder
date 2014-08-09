class Owner < ActiveRecord::Base
  has_secure_password
  has_one :password_reset_token, as: :tokenable
  has_many :login_attempts, as: :authenticable

  validates :password, presence: true, length: { minimum: 10 }
  validates :email_address, presence: true, uniqueness: true, 
    format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
