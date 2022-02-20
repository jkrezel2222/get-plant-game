class User < ApplicationRecord
    
    has_many :listings :plants
    
    has_secure_password

    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" },
    uniqueness: { case_sensitive: false },
    length: { minimum: 4, maximum: 254 }
end
