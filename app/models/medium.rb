class Medium < ApplicationRecord
    belongs_to :category
    has_many :experiences
    has_many :users, through: :experiences
end
