class Experience < ApplicationRecord
    belongs_to :user
    belongs_to :medium

    validates :rating, :allow_blank => true, numericality: { 
        only_integer: true,
        greater_than_or_equal_to: 1,
        less_than_or_equal_to: 10
     }

     validates :medium_id, uniqueness: { scope: :user_id, message: "You've already experienced this!"}
end
