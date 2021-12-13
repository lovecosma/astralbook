class Subcategory < ApplicationRecord
    belongs_to :intention
    has_and_belongs_to_many :correspondences 
end
