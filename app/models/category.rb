class Category < ApplicationRecord
    has_many :correspondences
    validates :title, presence: true, uniqueness: true
end
