class Intention < ApplicationRecord
    has_and_belongs_to_many :correspondences
    accepts_nested_attributes_for :correspondences
    validates :name, presence: true, uniqueness: true
    has_many :subintentions



    def correspondences_attributes=(correspondences)
        correspondences.each do |c|
            actual_name = c[:name].split(" (").first.strip
            notes_arr = c[:name].split(" (").last.split(")").last.split("/")
            correspondence = Correspondence.find_or_create_by(name: actual_name, category_id: c.category_id)
            self.correspondences << correspondence if !self.correspondences.include? correspondence && correspondence
        end
    end
end
