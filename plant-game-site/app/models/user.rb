class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, format: { with: /^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$/, message: "Must enter a valid email address" },
    uniqueness: { case_sensitive: false },
    length: { minimum: 4, maximum: 254 }
end
