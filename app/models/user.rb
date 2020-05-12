class User < ApplicationRecord
    has_many :experiences
    has_many :media, through: :experiences

    has_secure_password
end
