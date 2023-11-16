class Account < ApplicationRecord
    validates :username, :email, :password, presence: true
    validates :username, length: { minimum: 5 }
    validates :username, uniqueness: true
    validates :password, length: { minimum: 6 }
    validates :password, uniqueness: true
    has_many :address
end
