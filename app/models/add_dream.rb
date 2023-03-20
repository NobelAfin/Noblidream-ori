class AddDream < ApplicationRecord
    belongs_to :user
    validates :plan_ideal, presence: true
    validates :descripcion, presence: true
    validates :sector_del_sueño, presence: true
    validates :nombre_del_sueño, presence: true
end