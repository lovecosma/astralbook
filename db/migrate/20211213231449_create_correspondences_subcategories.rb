class CreateCorrespondencesSubcategories < ActiveRecord::Migration[6.1]
  def change
    create_table :correspondences_subcategories do |t|
      t.belongs_to :correspondence
      t.belongs_to :subcategory
      t.timestamps
    end
  end
end
