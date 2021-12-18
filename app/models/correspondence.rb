class Correspondence < ApplicationRecord
    validates :name, presence: true, length: {minimum: 1}
    validate :uniqueness_within_category
    has_and_belongs_to_many :intentions
    has_many :correspondences, through: :intentions
    belongs_to :category
    has_many :notes, dependent: :destroy
    has_and_belongs_to_many :subintentions    

    def uniqueness_within_category
        correspondences_with_same_info = Correspondence.where("name = ? AND category_id = ?", self.name, self.category_id)
        errors.add(:name, "#{self.name.capitalize} already exists within this category.") if correspondences_with_same_info.length > 1
    end
 








end
