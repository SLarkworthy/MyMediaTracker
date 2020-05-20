class Medium < ApplicationRecord
    belongs_to :category
    has_many :experiences
    has_many :users, through: :experiences

    accepts_nested_attributes_for :experiences

    validates :category_id, presence: true
    validates :name, presence: true, uniqueness: { scope: :creators }
    validates :creators, presence: true

    scope :alphabetical, -> { order(:name) }
    def self.user_medium(id_of_user)
        joins(:users, :experiences).where(experiences:{user_id: id_of_user}).distinct
    end
    def self.user_favorites(id_of_user)
        joins(:users, :experiences).where(experiences:{user_id: id_of_user, rating: 10}).distinct
    end
    
end
