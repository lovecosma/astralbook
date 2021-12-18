class Correspondence < ApplicationRecord
    validates :name, presence: true, length: {minimum: 1}
    validate :uniqueness_within_category
    has_and_belongs_to_many :intentions
    has_many :correspondences, through: :intentions
    belongs_to :category
    has_many :notes, dependent: :destroy

    def uniqueness_within_category
        correspondence = Correspondence.find_by(name: self.name, category_id: self.intention)
        binding.pry
        errors.add(:name, "#{self.name.capitalize} already exists within #{correspondence.category.title}") if !!correspondence
    end
 








end
