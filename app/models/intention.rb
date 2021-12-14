class Intention < ApplicationRecord
    has_and_belongs_to_many :correspondences
    accepts_nested_attributes_for :correspondences
    validates :name, presence: true, uniqueness: true
    has_many :subintentions



    def correspondences_attributes=(correspondences)
        correspondences.each do |c|
            correspondence = Correspondence.find_by(c)
            self.correspondences << correspondence if !self.correspondences.include? correspondence && correspondence
        end
    end
end
