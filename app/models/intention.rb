class Intention < ApplicationRecord
    has_and_belongs_to_many :correspondences
    accepts_nested_attributes_for :correspondences
    validates :name, presence: true, uniqueness: true
    



    def correspondences_attributes=(correspondences)
        
    end
end
