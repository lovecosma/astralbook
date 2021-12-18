class Subintention < ApplicationRecord
    belongs_to :intention
    has_and_belongs_to_many :correspondences
    validates :name, presence: true, length: {minimum: 1}

end
