class User < ApplicationRecord
  has_many :reservations

#use bcrypt to encode passwords
has_secure_password
end
