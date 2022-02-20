class Plant < ApplicationRecord
    belongs_to :user

    validates :title, length: { minimum: 1, maximum: 500 }
    validates :description, length: { minimum: 1, maximum: 1200 }

  end