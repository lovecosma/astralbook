class Correspondence < ApplicationRecord
    has_and_belongs_to_many :intentions
    has_and_belongs_to_many :categories
end
