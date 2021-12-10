class Intention < ApplicationRecord
    has_and_belongs_to_many :correspondences
    accepts_nested_attributes_for :correspondences
    validates :name, presence: true, uniqueness: true




    def correspondences_attributes=(correspondences)
        correspondences.each do |c|
            self.correspondences << Correspondence.find_by(c) if !self.correspondences.include? Correspondence.find_by(c) && Correspondence.find_by(c)
        end
    end
end
