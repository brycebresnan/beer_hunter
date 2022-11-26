class User < ApplicationRecord
  has_many :api_keys, as: :bearer
  has_many :reviews
  has_secure_password

end