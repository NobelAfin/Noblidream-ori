class Room < ApplicationRecord
    belongs_to :dream
    belongs_to :goal
end