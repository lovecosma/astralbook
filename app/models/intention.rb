class Intention < ApplicationRecord
    has_and_belongs_to_many :correspondences
    validates :name, presence: true, uniqueness: true
end
