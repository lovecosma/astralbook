class Correspondence < ApplicationRecord
    has_and_belongs_to_many :intentions
    has_many :correspondences, through: :intentions
    belongs_to :category
    validates :name, presence: true, uniqueness: true
end
