class CreateCategoriesCorrespondences < ActiveRecord::Migration[6.1]
  def change
    create_table :categories_correspondences do |t|
      t.belongs_to :category
      t.belongs_to :correspondence
      t.timestamps
    end
  end
end
