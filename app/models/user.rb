class User < ApplicationRecord
    has_many :experiences
    has_many :media, through: :experiences

    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true

    def find_experience_by_medium_id(medium_id)
        self.experiences.find_by(medium_id: medium_id)
    end

    def seen?(medium)
        self.media.include?(medium)
    end
end
