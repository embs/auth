class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_secure_token :token

  normalizes :email, with: ->(e) { e.strip.downcase }
end
