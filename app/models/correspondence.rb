class Correspondence < ApplicationRecord
    has_and_belongs_to_many :powers
    has_many :correspondences, through: :powers
end
