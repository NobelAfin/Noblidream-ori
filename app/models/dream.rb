class Dream < ApplicationRecord
    has_many :goal
    belongs_to :user
end