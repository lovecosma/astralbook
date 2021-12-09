class Correspondence < ApplicationRecord
    has_and_belongs_to_many :intentions
    has_many :correspondences, through: :intentions
    belongs_to :category
    validates :name, presence: true
    validate :uniqueness_within_category

    def uniqueness_within_category
        cor = Correspondence.find_by(name: self.name, category_id: self.category_id)
        self.errors.add(:name, "already exists within this category") if !!cor
    end


end
