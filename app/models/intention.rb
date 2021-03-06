class Intention < ApplicationRecord
    has_and_belongs_to_many :correspondences, -> { order "category_id desc" }
    accepts_nested_attributes_for :correspondences
    validates :name, presence: true, uniqueness: true
    has_many :notes, :through => :correspondences
    has_many :subintentions

 
end
