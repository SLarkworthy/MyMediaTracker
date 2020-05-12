class User < ApplicationRecord
    has_many :experiences
    has_many :media, through: :experiences

    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
end
