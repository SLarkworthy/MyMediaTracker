class Medium < ApplicationRecord
    belongs_to :category
    has_many :experiences
    has_many :users, through: :experiences

    accepts_nested_attributes_for :experiences

    validates :category_id, presence: true
    validates :name, presence: true, uniqueness: { scope: :creators }
    validates :creators, presence: true

    def self.alphabetical
        order(:name)
    end
    def self.user_medium(id_of_user)
        joins(:users, :experiences).where(experiences:{user_id: id_of_user}).distinct
    end


    
    
end
