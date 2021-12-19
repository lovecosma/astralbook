class Correspondence < ApplicationRecord
    validates :name, presence: true, length: {minimum: 1}
    belongs_to :category
    validate :uniqueness_within_category
    validate :set_category_title
    has_and_belongs_to_many :intentions
    has_many :correspondences, through: :intentions
    has_many :notes, dependent: :destroy
    has_and_belongs_to_many :subintentions    


    private

    def set_category_title
        self.category_title = self.category.title
    end

    def uniqueness_within_category
        correspondences_with_same_info = Correspondence.where("name = ? AND category_id = ?", self.name, self.category_id)
        errors.add(:name, "#{self.name.capitalize} already exists within this category.") if correspondences_with_same_info.length > 1
    end
 








end
