class Intention < ApplicationRecord
    has_and_belongs_to_many :correspondences
    accepts_nested_attributes_for :correspondences
    validates :name, presence: true, uniqueness: true
    



    def correspondences_attributes=(correspondences)
        correspondences.each do |c|
            actual_name = c[:name].split(" (").first.strip
            correspondence = Correspondence.find_by(name: actual_name, category_id: c[:category_id])
            c[:name].split(" (").last.split(")").last.split("/").each do |n|
                    correspondence.notes.create(content: n, correspodence_id: correspondence.id, intention_id: self.id)
            end
            self.correspondences << correspondence if !self.correspondences.include? correspondence
        end
    end
end
