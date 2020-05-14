class Medium < ApplicationRecord
    belongs_to :category
    has_many :experiences
    has_many :users, through: :experiences

    validates :category_id, presence: true
    validates :name, presence: true, uniqueness: { scope: :creators }
    validates :creators, presence: true
end
